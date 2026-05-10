<?php

namespace App\Filament\Resources\ContactSettingResource\Pages;

use App\Filament\Resources\ContactSettingResource;
use App\Models\ContactSetting;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;
use Filament\Support\Facades\FilamentView;

class ManageContactSettings extends ManageRecords
{
    protected static string $resource = ContactSettingResource::class;

    public function mount(): void
    {
        $record = ContactSetting::query()->first();

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
