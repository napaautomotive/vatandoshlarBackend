<?php

namespace App\Models;

use App\Traits\ScopeTrait;
use Illuminate\Database\Eloquent\Model;


class Infographic extends Model
{
    use ScopeTrait;
    protected $guarded=['id'];
}
