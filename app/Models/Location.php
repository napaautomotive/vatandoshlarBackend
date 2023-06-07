<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
    protected $table = 'locations';

    public function assosiationCategories()
    {
        return $this->hasMany(AssosiationCategory::class, 'location_id');
    }
}
