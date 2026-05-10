<?php

namespace App\Filament\Resources\HeroSectionResource\Pages;

use App\Filament\Resources\HeroSectionResource;
use App\Models\HeroSection;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;
use Filament\Support\Facades\FilamentView;

class ManageHeroSections extends ManageRecords
{
    protected static string $resource = HeroSectionResource::class;

    public function mount(): void
    {
        $record = HeroSection::query()->first();

        $url = $record
            ? static::getResource()::getUrl('edit', ['record' => $record])
            : static::getResource()::getUrl('create');

        $this->redirect($url, navigate: FilamentView::hasSpaMode($url));
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
