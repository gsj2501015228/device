<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin');
    //$router->resource('posts', 'PostsController');
    //设备页面
    $router->get('/device/device','DeviceController@index')->name('device');
    //设备详情页
    $router->get('/device/device/{id}','DeviceController@content');
    $router->get('view/log/{id}','DeviceController@log');
    $router->get('view/video/{id}','DeviceController@video');
    //设备日志页面
    $router->get('/device/device_log','DeviceLogController@index')->name('device_log');
    //设备视频页面
    $router->get('/device/device_video','DeviceVideoController@index')->name('device_video');

});
