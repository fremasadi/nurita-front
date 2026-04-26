<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HeroSection extends Model
{
    protected $fillable = [
        'title_id', 'title_en',
        'highlight_id', 'highlight_en',
        'description_id', 'description_en',
        'button_text_id', 'button_text_en',
        'button_url', 'image',
    ];
}
