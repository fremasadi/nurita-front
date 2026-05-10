<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HeroSectionResource\Pages;
use App\Models\HeroSection;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class HeroSectionResource extends Resource
{
    protected static ?string $model = HeroSection::class;

    protected static ?string $navigationIcon = 'heroicon-o-home';

    protected static ?string $navigationLabel = 'Hero Section';

    protected static ?string $navigationGroup = 'Landing Page';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Tabs::make('Languages')
                ->tabs([
                    Forms\Components\Tabs\Tab::make('Indonesia')
                        ->schema([
                            Forms\Components\TextInput::make('title_id')
                                ->label('Judul')->required()->maxLength(255),
                            Forms\Components\TextInput::make('highlight_id')
                                ->label('Highlight')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_id')
                                ->label('Deskripsi')->required()->rows(4),
                            Forms\Components\TextInput::make('button_text_id')
                                ->label('Teks Tombol')->required()->maxLength(255),
                        ]),
                    Forms\Components\Tabs\Tab::make('English')
                        ->schema([
                            Forms\Components\TextInput::make('title_en')
                                ->label('Title')->required()->maxLength(255),
                            Forms\Components\TextInput::make('highlight_en')
                                ->label('Highlight')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_en')
                                ->label('Description')->required()->rows(4),
                            Forms\Components\TextInput::make('button_text_en')
                                ->label('Button Text')->required()->maxLength(255),
                        ]),
                ])
                ->columnSpanFull(),
            // Forms\Components\TextInput::make('button_url')
            //     ->label('Button URL')
            //     ->helperText('Bisa berupa anchor seperti #kontak, path seperti /kontak, atau URL lengkap.')
            //     ->maxLength(255),
            Forms\Components\FileUpload::make('image')
                ->label('Hero Image')->image()->directory('hero'),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title_id')->label('Judul (ID)')->limit(40),
                Tables\Columns\TextColumn::make('title_en')->label('Title (EN)')->limit(40),
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
            'index' => Pages\ManageHeroSections::route('/'),
            'create' => Pages\CreateHeroSection::route('/create'),
            'edit' => Pages\EditHeroSection::route('/{record}/edit'),
        ];
    }
}
