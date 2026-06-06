<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ContactSettingResource\Pages;
use App\Models\ContactSetting;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class ContactSettingResource extends Resource
{
    protected static ?string $model = ContactSetting::class;
    protected static ?string $navigationIcon = 'heroicon-o-envelope';
    protected static ?string $navigationLabel = 'Kontak';
    protected static ?string $navigationGroup = 'Landing Page';
    protected static ?int $navigationSort = 6;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Informasi Kontak')
                ->schema([
                    Forms\Components\TextInput::make('email')->label('Email')->email()->required(),
                    Forms\Components\TextInput::make('phone')->label('Telepon')->tel()->required(),
                    Forms\Components\TextInput::make('address')->label('Alamat')->required(),
                    Forms\Components\TextInput::make('whatsapp_number')->label('Nomor WhatsApp')->required(),
                    Forms\Components\TextInput::make('instagram_url')->label('URL Instagram')->url()->maxLength(255),
                    Forms\Components\TextInput::make('facebook_url')->label('URL Facebook')->url()->maxLength(255),
                ])
                ->columns(2),
            Forms\Components\Tabs::make('Languages')
                ->tabs([
                    Forms\Components\Tabs\Tab::make('Indonesia')
                        ->schema([
                            Forms\Components\TextInput::make('section_title_id')->label('Judul Section')->required()->maxLength(255),
                            Forms\Components\TextInput::make('section_highlight_id')->label('Highlight')->required()->maxLength(255),
                            Forms\Components\Textarea::make('section_description_id')->label('Deskripsi Section')->required()->rows(3),
                            Forms\Components\Textarea::make('whatsapp_message_id')->label('Pesan WhatsApp Default')->required()->rows(3),
                        ]),
                    Forms\Components\Tabs\Tab::make('English')
                        ->schema([
                            Forms\Components\TextInput::make('section_title_en')->label('Section Title')->required()->maxLength(255),
                            Forms\Components\TextInput::make('section_highlight_en')->label('Highlight')->required()->maxLength(255),
                            Forms\Components\Textarea::make('section_description_en')->label('Section Description')->required()->rows(3),
                            Forms\Components\Textarea::make('whatsapp_message_en')->label('Default WhatsApp Message')->required()->rows(3),
                        ]),
                ])
                ->columnSpanFull(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('email')->label('Email'),
                Tables\Columns\TextColumn::make('phone')->label('Telepon'),
                Tables\Columns\TextColumn::make('whatsapp_number')->label('WhatsApp'),
                Tables\Columns\TextColumn::make('instagram_url')->label('Instagram')->limit(30),
                Tables\Columns\TextColumn::make('facebook_url')->label('Facebook')->limit(30),
                Tables\Columns\TextColumn::make('updated_at')->label('Diperbarui')->dateTime('d M Y'),
            ])
            ->actions([Tables\Actions\EditAction::make()])
            ->paginated(false);
    }

    public static function canCreate(): bool
    {
        return ! static::getModel()::query()->exists();
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageContactSettings::route('/'),
            'create' => Pages\CreateContactSetting::route('/create'),
            'edit' => Pages\EditContactSetting::route('/{record}/edit'),
        ];
    }
}
