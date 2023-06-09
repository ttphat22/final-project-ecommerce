@extends('layouts.app_master_admin')
@section('content')
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Kiểm nhập kho</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="">  Nhập kho </a></li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
            {{-- <div class="box-header">
                    <div class="pull-left">
                        <form action="" class="form-inline">
                            <input type="text" class="form-control" autocomplete="off" name="time" placeholder="Thời gian ..." value="{{ Request::get('time') }}">
                            <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Tìm kiếm</button>
                        </form>
                    </div>
                </div> --}}
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a href="{{ route('admin.invoice_entered.create') }}" class="btn btn-primary">Add new <i class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">

					<div class="col-md-12">
						<table class="table">
							<tbody>
							<tr>
								<th style="width: 10px">No.</th>
								<th>Product</th>
								<th>Amount of money</th>
								<th>The number of import</th>
								<th>Sold</th>
								<th>Total sales</th>
								<th>Quantity remaining</th>
{{--								<th>Total amount</th>--}}
							</tr>
							</tbody>
							@if (isset($invoiceEntered))
								@foreach($invoiceEntered as  $key => $item)
									<tr>
										<td>{{ ($key + 1) }}</td>
										<td>
											<a href="">{{ $item->product->pro_name ?? "[N\A]"}}</a>
										</td>
										<td>{{ number_format($item->ie_money,0,',','.') }} VNĐ</td>
										<td>{{ $item->ie_number }}</td>
										<td>{{ $item->ie_number_sold }}</td>
										<td>{{ number_format($item->ie_money * ($item->ie_number - $item->ie_number_sold),0,',','.') }} VNĐ</td>
										<td>{{ $item->ie_number - $item->ie_number_sold }}</td>

{{--										<td>{{ number_format($item->ie_total_money,0,',','.') }} VNĐ</td>--}}
									</tr>
								@endforeach
							@endif
						</table>
					</div>
{{--                    <p> Tổng tiền <b>{{ number_format($sum,0,',','.') }} VNĐ</b></p>--}}
				</div>
			</div>
			<!-- /.box -->
		</div>
		<div class="box-footer">
			{!! $invoiceEntered->appends($query ?? [])->links() !!}
		</div>
	</section>
	<!-- /.content -->
@stop
@section('script')
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/daterangepicker.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/bower_components/daterangepicker/daterangepicker.css') }}" />
    <script type="text/javascript">
        $(function(){
            $('input[name="time"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                } ,
                ranges: {
                    'Hôm nay': [moment(), moment()],
                    'Hôm qua': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 ngày trước': [moment().subtract(6, 'days'), moment()],
                    '30 ngày trước': [moment().subtract(29, 'days'), moment()],
                    'Tháng này': [moment().startOf('month'), moment().endOf('month')],
                    'Tháng trước': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                }
            });

            $('input[name="time"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
            });

            $('input[name="time"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
        })
    </script>
@stop