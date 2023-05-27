<?php

namespace App\Models;

use App\Traits\ScopeTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;


class Column extends Model
{
    use ScopeTrait;
    protected $guarded=['id'];
    protected $table='columns';

}
