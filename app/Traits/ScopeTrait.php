<?php

namespace App\Traits;

trait ScopeTrait
{
    public function scopeSelectAll($query, $search)
    {
        return $query->select('tags', 'id','image','title_uz','title_oz','title_ru','title_en','viewers','images')
            ->where('tags', 'LIKE', "%$search%");
    }

    public function scopeSelectTitle($query, $search)
    {
        return $query->select('title_uz','title_oz','title_ru','title_en','text_uz','text_oz','text_ru','text_en','tags', 'id','image','viewers','images')
            ->where('title_uz', 'LIKE', "%$search%");
    }
}
