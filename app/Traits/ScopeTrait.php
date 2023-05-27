<?php

namespace App\Traits;

trait ScopeTrait
{
    public function scopeSelectAll($query, $search)
    {
        return $query->select('id','tag_uz','tag_oz','tag_ru','tag_en', 'image','title_uz','title_oz','title_ru','title_en','viewers','images','data')
            ->where('tag_uz', 'LIKE', "%$search%")
            ->orWhere('tag_oz', 'LIKE', "%$search%")
            ->orWhere('tag_en', 'LIKE', "%$search%")
            ->orWhere('tag_ru', 'LIKE', "%$search%");
    }

    public function scopeSelectTitle($query, $search)
    {
        return $query->select('title_uz','title_oz','title_ru','title_en','text_uz','text_oz','text_ru','text_en','tag_uz','tag_oz','tag_ru','tag_en', 'id','image','viewers','images')
            ->where('title_uz', 'LIKE', "%$search%")
            ->orWhere('title_oz', 'LIKE', "%$search%")
            ->orWhere('title_ru', 'LIKE', "%$search%")
            ->orWhere('title_en', 'LIKE', "%$search%");
    }


    public function scopeBrandTag($query)
    {
        return $query->select('id','viewers','image','data','title_uz','title_oz','title_ru','title_en','text_uz','text_oz','text_ru','text_en','tag_uz','tag_oz','tag_ru','tag_en','created_at');
    }
}
