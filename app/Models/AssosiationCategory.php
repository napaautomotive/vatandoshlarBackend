<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class AssosiationCategory extends Model
{

    protected $table = 'assosiation_categories';

    public function location()
    {
        return $this->belongsTo(Location::class);
    }
}
