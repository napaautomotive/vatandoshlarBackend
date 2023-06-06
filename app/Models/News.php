<?php

namespace App\Models;

use App\Traits\ScopeTrait;
use Illuminate\Database\Eloquent\Model;


class News extends Model
{
    use ScopeTrait;
    protected $guarded=['id'];
    protected $table = 'news';

}
