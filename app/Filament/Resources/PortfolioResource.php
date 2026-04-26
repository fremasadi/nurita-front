<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PortfolioResource\Pages;
use App\Models\Portfolio;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class PortfolioResource extends Resource
{
    protected static ?string $model = Portfolio::class;
    protected static ?string $navigationIcon = 'heroicon-o-photo';
    protected static ?string $navigationLabel = 'Portofolio';
    protected static ?string $navigationGroup = 'Landing Page';
    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Tabs::make('Languages')
                ->tabs([
                    Forms\Components\Tabs\Tab::make('Indonesia')
                        ->schema([
                            Forms\Components\TextInput::make('title_id')->label('Judul')->required()->maxLength(255),
                            Forms\Components\TextInput::make('category_id')->label('Kategori')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_id')->label('Deskripsi')->required()->rows(3),
                        ]),
                    Forms\Components\Tabs\Tab::make('English')
                        ->schema([
                            Forms\Components\TextInput::make('title_en')->label('Title')->required()->maxLength(255),
                            Forms\Components\TextInput::make('category_en')->label('Category')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_en')->label('Description')->required()->rows(3),
                        ]),
                ])
                ->columnSpanFull(),
            Forms\Components\FileUpload::make('image')
                ->label('Gambar')->image()->directory('portfolios'),
            Forms\Components\TextInput::make('demo_url')
                ->label('Demo URL')->url()->maxLength(255),
            Forms\Components\TagsInput::make('tags')
                ->label('Tags')->separator(','),
            Forms\Components\TextInput::make('order')->label('Urutan')->numeric()->default(0),
            Forms\Components\Toggle::make('is_active')->label('Aktif')->default(true),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('order')->label('#')->sortable(),
                Tables\Columns\ImageColumn::make('image')->label('Gambar'),
                Tables\Columns\TextColumn::make('title_id')->label('Judul (ID)'),
                Tables\Columns\TextColumn::make('category_id')->label('Kategori'),
                Tables\Columns\IconColumn::make('is_active')->label('Aktif')->boolean(),
            ])
            ->defaultSort('order')
            ->reorderable('order')
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([Tables\Actions\BulkActionGroup::make([Tables\Actions\DeleteBulkAction::make()])]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPortfolios::route('/'),
            'create' => Pages\CreatePortfolio::route('/create'),
            'edit' => Pages\EditPortfolio::route('/{record}/edit'),
        ];
    }
}
