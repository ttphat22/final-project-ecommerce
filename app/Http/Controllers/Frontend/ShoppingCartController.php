<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Attribute;
use App\Services\ShoppingCartService\PayManager;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use App\Models\Transaction;
use App\Models\Order;
use App\Mail\TransactionSuccess;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class ShoppingCartController extends FrontendController
{
    public function index(Request $request)
    {
        if ($request->paymentId) {
            \Cart::destroy();
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Payment success'
            ]);
            return redirect()->route('get.home');
        }

        $attributes = $this->syncAttributeGroup();

        $shopping = \Cart::content();

        $viewData = [
            'title_page' => 'Danh sách giỏ hàng',
            'shopping'   => $shopping,
            'attributes' => $attributes
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    public function updateAttribute(Request $request, $id)
    {
        $size = $request->size;
        //4. Update
        \Cart::update($id, [
            'options' => [
                'size' => $size,
            ]
        ]);

        return response([
            'messages' => 'Update success',
        ]);
    }

    /**
     * Thêm giỏ hàng
     * */
    public function add(Request $request, $id)
    {
        $product = Product::find($id);

        //1. Kiểm tra tồn tại sản phẩm
        if (!$product) return redirect()->to('/');

        // 2. Kiểm tra số lượng sản phẩm
        if ($product->pro_number < 1) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'The number of products is not enough'
            ]);

            return redirect()->back();
        }
        $cart          = \Cart::content();
        $idCartProduct = $cart->search(function ($cartItem) use ($product) {
            if ($cartItem->id == $product->id) return $cartItem->id;
        });

        //  Check các thuộc tính
        $attributes = $request['attributes'] ?? '';
        if ($attributes) {
            $attributesIds = explode('-', $attributes);
            $attributes    = Attribute::whereIn('id', $attributesIds)->get();
        }
        if ($idCartProduct) {
            $productByCart = \Cart::get($idCartProduct);
            if ($product->pro_number < ($productByCart->qty + 1)) {
                \Session::flash('toastr', [
                    'type'    => 'error',
                    'message' => 'The number of products is not enough'
                ]);
                return redirect()->back();
            }
        }
        $size = $request->size;
        // 3. Thêm sản phẩm vào giỏ hàng
        \Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'size'          => $size,
                'sale'          => $product->pro_sale,
                'price_old'     => $product->pro_price,
                'image'         => $product->pro_avatar,
                'attributes'    => $attributes ?? [],
                'attributesIds' => $attributesIds ?? []
            ]
        ]);

        //4. Thông báo
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Add to cart successfully'
        ]);

        return redirect()->back();
    }

    public function postPay(Request $request)
    {
        Cache::forget('HOME.PRODUCT_PAY');
        $data = $request->except("_token");
        if (!\Auth::user()->id) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng nhập để thực hiện tính năng này'
            ]);

            return redirect()->back();
        }

        $data['tst_user_id']     = \Auth::user()->id;
        // $data['tst_user_id']     = \Auth::user()->id;
        $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        $data['created_at']      = Carbon::now();

        // check nếu thanh toán ví thì kiểm tra số tiền
        if ($request->pay == 'online') {
            if (get_data_user('web', 'balance') < $data['tst_total_money']) {
                \Session::flash('toastr', [
                    'type'    => 'error',
                    'message' => 'Số tiền của bạn không đủ để thanh toán. Hãy nạp thêm tiền để thanh toán từ ví của bạn'
                ]);
                return redirect()->back();
            }
        }

        // Lấy thông tin đơn hàng
        $shopping                  = \Cart::content();
        $data['options']['orders'] = $shopping;

        $options['drive'] = $request->pay;

        try {
            \Cart::destroy();
            new PayManager($data, $shopping, $options);
        } catch (\Exception $exception) {
            Log::error("[Errors pay shopping cart]" . $exception->getMessage());
        }

        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Your order has been saved'
        ]);

        return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.Lấy tham số
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. Kiểm tra tồn tại sản phẩm
            if (!$product) return response(['messages' => 'There are no products to update']);

            //3. Kiểm tra số lượng sản phẩm còn ko
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'The number of updates is not enough',
                    'error'    => true
                ]);
            }

            //4. Update
            \Cart::update($id, $qty);

            return response([
                'messages'   => 'Update success',
                'totalMoney' => \Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
            ]);
        }
    }

    /**
     *  Xoá sản phẩm đơn hang
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax()) {
            \Cart::remove($rowId);
            return response([
                'totalMoney' => \Cart::subtotal(0),
                'type'       => 'success',
                'messages'   => 'Delete product success'
            ]);
        }
    }
}
