<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Headcolumn extends Model
{
    protected $table = 'headcolumns';
    protected $guarded=['id'];
    protected $fillable=['counts'];
}
