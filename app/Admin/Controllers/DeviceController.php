<?php
/**
 * Created by PhpStorm.
 * User: gsj
 * Date: 2020/7/27
 * Time: 9:57
 */

namespace App\Admin\Controllers;

use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Layout\Content;
use App\Admin\Model\Device;
use App\Admin\Model\DeviceLog;
use App\Admin\Model\DeviceVideo;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Layout\Column;
use Dcat\Admin\Controllers\Dashboard;
use App\Admin\Metrics\Examples;
use App\Admin\Metrics\Device_content;
use App\Admin\Action;
use Dcat\Admin\Admin;

class DeviceController extends AdminController
{
    public function index(Content $content)
    {
        return $content
            ->header('设备列表')
            ->description('这是一个描述')
            ->body($this->grid());

    }

    public function grid()
    {
        return Grid::make(new Device(), function (Grid $grid) {
            // 第一列显示id字段，并将这一列设置为可排序列
            //$grid->id->code()->sortable();
            $grid->id('ID')->sortable()->setAttributes(['style' => 'font-size:10px']);
            $grid->device_code('设备号');
            $grid->device_name('设备名')->display(function ($device_name){
                return "<a href='/'>$device_name</a>";
            });
            $grid->relevance('关联');
            $grid->state('状态')->label();
            $grid->created_at('创建日期');
            $grid->updated_at('更新日期');
            //工具栏
            //$grid->showFilterButton();
            $grid->filter(function($filter){
                // 展开过滤器
                $filter->expand();
                // 在这里添加字段过滤器
                $filter->equal('id', '设备ID');
                $filter->like('state', '状态');
                $filter->between('created_at','创建日期')->datetime();
               // $filter->date('created_at','创建日期');

            });
            $grid->rowSelector()->background(Admin::color()->dark50());
            //行操作
            $grid->actions(new Action\ViewLog());
            $grid->actions(new Action\ViewVideo());
            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableDelete();
                $actions->disableEdit();
                $actions->disableQuickEdit();
                $actions->disableView();
            });

        });
    }
    public function log(Content $content,$id)
    {
        return $content
            ->header('日志列表')
            ->description('设备：'.$id)
            ->body($this->viewlog($id));

    }
    protected function viewlog($id)
    {
        global $device;
        $device = $id;
        return Grid::make(new DeviceLog(), function (Grid $grid) {
            $id = $GLOBALS['device'];

            $grid->model()->where('device_id', '=', $id);
            // 第一列显示id字段，并将这一列设置为可排序列
            //$grid->id->code()->sortable();
            $grid->id('ID')->sortable()->setAttributes(['style' => 'font-size:10px']);
            $grid->device_id('设备号');
            $grid->name('日志名')->label();
            $grid->information('相关信息');
            $grid->created_at('上传日期');
            //$grid->updated_at('更新日期');

            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableDelete();
                $actions->disableEdit();
                $actions->disableQuickEdit();
                $actions->disableView();
            });

        });
    }
    public function video(Content $content,$id)
    {
        return $content
            ->header('视频列表')
            ->description('设备：'.$id)
            ->body($this->viewvideo($id));

    }
    protected function viewvideo($id)
    {
        global $device;
        $device = $id;
        return Grid::make(new DeviceVideo(), function (Grid $grid) {
            $id = $GLOBALS['device'];

            $grid->model()->where('device_id', '=', $id);
            // 第一列显示id字段，并将这一列设置为可排序列
            //$grid->id->code()->sortable();
            $grid->id('ID')->sortable()->setAttributes(['style' => 'font-size:10px']);
            $grid->device_id('设备号');
            $grid->name('日志名')->label();
            $grid->information('相关信息');
            $grid->created_at('上传日期');
            //$grid->updated_at('更新日期');

            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableDelete();
                $actions->disableEdit();
                $actions->disableQuickEdit();
                $actions->disableView();
            });

        });
    }

   /* public function details(Content $content, $id)
    {
        return $content
            ->header('设备详情')
            ->description('这是一个描述')
            ->body(function (Row $row) {
                $row->column(6, function (Column $column) {
                    $column->row(new Device_content\DeviceLogContent());
                });

                $row->column(6, function (Column $column) {
                    $column->row(new Device_content\DeviceVideoContent());
                });
            });
    }

    public function content(Content $content,$id)
    {
        $log = DeviceLog::where('device_id',$id)->first();
        $video = DeviceVideo::where('device_id',$id)->first();
        return $content
            ->header('设备详情')
            ->description('这是一个描述')
            ->body(
                <<<HTML
<div class="card" style="width: 100%">
  <div class="card-body">
    <h5 class="card-title">日志详情：</h5>
    <h6 class="card-subtitle mb-2 text-muted">ID:{$log->id}</h6>
    <p class="card-text">名称：{$log->name}</p>
    <p class="card-text">创建日期：{$log->created_at}</p>
    <p class="card-text">更新日期{$log->updated_at}</p>
  </div>
</div>
<div class="card" style="width:100%">
  <div class="card-body">
    <h5 class="card-title">视频详情：</h5>
    <h6 class="card-subtitle mb-2 text-muted">ID：{$video->id}</h6>
    <p class="card-text">名称：{$video->name}</p>
    <p class="card-text">创建日期：{$video->created_at}</p>
    <p class="card-text">更新日期：{$video->updated_at}</p>
  </div>
</div>
HTML

            );

    }*/
}