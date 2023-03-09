<?php

namespace App\Imports;

use App\Models\Country;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportUsers implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Country([
            'country_name_uz'=>$row[1],
            'country_name_en'=>$row[1],
            'country_name_ru'=>$row[1],
            'country_flag_code'=>$row[0]
        ]);
    }
}
