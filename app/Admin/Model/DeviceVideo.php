<?php
/**
 * Created by PhpStorm.
 * User: gsj
 * Date: 2020/7/27
 * Time: 9:54
 */

namespace App\Admin\Model;

use Illuminate\Database\Eloquent\Model;

class DeviceVideo extends Model
{
    const UPDATED_AT = null;
    //const CREATED_AT = null;
    public $timestamps = true;
    protected $table = 'device_video';
}