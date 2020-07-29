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
use App\Admin\Model\DeviceLog;
use Dcat\Admin\Grid;


class DeviceLogController extends AdminController
{
    public function index(Content $content)
    {
        return $content
            ->header('设备日志')
            ->description('这是一个描述')
            ->body($this->grid());
    }

    public function grid()
    {
        return Grid::make(new DeviceLog(), function (Grid $grid) {
            $grid->export();
            // 第一列显示id字段，并将这一列设置为可排序列
            //$grid->id->code()->sortable();
            $grid->id('ID')->sortable()->setAttributes(['style' => 'font-size:10px']);
            $grid->device_id('设备号');
            $grid->name('日志名')->label();
            $grid->information('相关信息');
            $grid->created_at('上传日期');
            //$grid->updated_at('更新日期');
            //工具栏
            $grid->disableCreateButton();
            $grid->filter(function($filter){
                // 展开过滤器
                $filter->panel();
                //$filter->expand();
                // 在这里添加字段过滤器
                $filter->equal('device_id', '设备ID');
                $filter->between('created_at','上传日期')->datetime();

            });

            $grid->actions(function (Grid\Displayers\Actions $actions) {
                //$actions->disableDelete();
                $actions->disableEdit();
                $actions->disableQuickEdit();
                $actions->disableView();
            });

        });

    }
}