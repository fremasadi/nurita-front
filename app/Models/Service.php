<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
        'icon', 'title_id', 'title_en',
        'description_id', 'description_en',
        'order', 'is_active',
    ];

    protected $casts = ['is_active' => 'boolean'];
}
