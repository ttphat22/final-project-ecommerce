<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestAttribute;
use App\Manufacturer;
use App\Models\Attribute;
use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminManufacturerController extends Controller
{
    public function index()
    {
        $manufacturers = Manufacturer::get();

        $viewData = [
            'manufacturers' => $manufacturers
        ];

        return view('admin.manufacturer.index', $viewData);
    }

    public function create()
    {
        return view('admin.manufacturer.create');
    }

    public function store(Request $request)
    {
        $data = $request->except('_token');
        $data['m_slug']     = Str::slug($request->m_slug);
        $data['created_at'] = Carbon::now();

        $id = Manufacturer::insertGetId($data);
        return redirect()->back();
    }

    public function edit($id)
    {
        $manufacturer = Manufacturer::find($id);
        return view('admin.manufacturer.update', compact('manufacturer'));
    }

    public function update(Request $request, $id)
    {
        $manufacturer          = Manufacturer::find($id);
        $data               = $request->except('_token');
        $data['m_slug']   = Str::slug($request->m_name);
        $data['updated_at'] = Carbon::now();

        $manufacturer->update($data);
        return redirect()->back();
    }

    public function delete($id)
    {
        $manufacturer          = Manufacturer::find($id);
        if ($manufacturer) $manufacturer->delete();

        return redirect()->back();
    }
}
