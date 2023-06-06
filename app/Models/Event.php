<?php

namespace App\Models;

use App\Traits\ScopeTrait;
use Illuminate\Database\Eloquent\Model;


class Event extends Model
{
    use ScopeTrait;
    protected $guarded=['id'];
}
