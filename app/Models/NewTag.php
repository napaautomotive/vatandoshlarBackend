<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class NewTag extends Model
{

    protected $casts = [ 'options' => 'array', ];
    
}
