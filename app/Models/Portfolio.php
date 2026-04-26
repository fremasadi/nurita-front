<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    protected $fillable = [
        'title_id', 'title_en',
        'category_id', 'category_en',
        'description_id', 'description_en',
        'image', 'tags', 'demo_url',
        'order', 'is_active',
    ];

    protected $casts = [
        'tags' => 'array',
        'is_active' => 'boolean',
    ];
}
