<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactSetting extends Model
{
    protected $fillable = [
        'email', 'phone', 'address', 'whatsapp_number',
        'instagram_url', 'facebook_url',
        'whatsapp_message_id', 'whatsapp_message_en',
        'section_title_id', 'section_title_en',
        'section_highlight_id', 'section_highlight_en',
        'section_description_id', 'section_description_en',
    ];
}
