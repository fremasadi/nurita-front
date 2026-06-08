<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

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
        'image' => 'array',
        'tags' => 'array',
        'is_active' => 'boolean',
    ];

    protected $appends = [
        'image_urls',
        'image_names',
        'primary_image_url',
    ];

    public function getImageUrlsAttribute(): array
    {
        return collect($this->image ?? [])
            ->filter()
            ->map(fn (string $image) => $this->cleanImageUrl($image))
            ->values()
            ->all();
    }

    public function getImageNamesAttribute(): array
    {
        return collect($this->image ?? [])
            ->filter()
            ->map(fn (string $image) => basename($image))
            ->values()
            ->all();
    }

    public function getPrimaryImageUrlAttribute(): ?string
    {
        return $this->image_urls[0] ?? null;
    }

    protected function cleanImageUrl(string $image): string
    {
        if (Str::startsWith($image, ['http://', 'https://'])) {
            return $image;
        }

        $path = Str::of($image)
            ->replaceStart('/storage/', '')
            ->ltrim('/')
            ->toString();

        return url(Storage::disk('public')->url($path));
    }
}
