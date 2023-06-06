<?php

namespace App\Models;
use App\Traits\ScopeTrait;
use Illuminate\Database\Eloquent\Model;


class Slider extends Model
{
    use ScopeTrait;
    protected $guarded=['id'];
}
