<?php
/**
 * Created by PhpStorm.
 * User: gsj
 * Date: 2020/7/27
 * Time: 16:16
 */

namespace App\Admin\Action;

use Dcat\Admin\Grid\RowAction;

class ViewVideo extends RowAction
{
    /**
     * 返回字段标题
     *
     * @return string
     */
    public function title()
    {
        return '查看视频';
    }

    /**
     * 添加JS
     *
     * @return string
     */
    protected function script()
    {
        $id =$this->row->id;
        return <<<JS
$(".view-video{$id}").on('click', function () {

     var id = $id;
    top.location='../view/video/'+id;
    console.log($(this).data('id'));

});
JS;
    }

    public function html()
    {
        // 获取当前行数据ID
        $id = $this->getKey();

        // 获取当前行数据的用户名
        $username = $this->row->username;

        // 这里需要添加一个class, 和上面script方法对应
        $this->setHtmlAttribute(['data-id' => $id, 'email' => $username, 'class' => 'view-video'.$id]);

        return parent::html();
    }

}