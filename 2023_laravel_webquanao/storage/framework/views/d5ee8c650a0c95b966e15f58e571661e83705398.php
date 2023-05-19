<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add new</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"> Create</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                         <?php echo csrf_field(); ?>
                        <div class="col-sm-8">
                            <div class="form-group <?php echo e($errors->first('m_name') ? 'has-error' : ''); ?>">
                                <label for="name">Name<span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="m_name"  placeholder="Name ...">
                                <?php if($errors->first('m_name')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('m_name')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="box-footer text-center "  style="margin-top: 20px;">
                                <a href="<?php echo e(route('admin.manufacturer.index')); ?>" class="btn btn-danger">
                                    <?php echo e(__('admin_product.btn_back')); ?> <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">
                                    <?php echo e(__('admin_product.btn_save')); ?>

                                    <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\2023_laravel_webquanao\2023_laravel_webquanao\resources\views/admin/manufacturer/create.blade.php ENDPATH**/ ?>