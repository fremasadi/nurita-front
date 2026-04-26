<?php

namespace App\Filament\Resources;

use App\Filament\Resources\WorkStepResource\Pages;
use App\Models\WorkStep;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class WorkStepResource extends Resource
{
    protected static ?string $model = WorkStep::class;
    protected static ?string $navigationIcon = 'heroicon-o-list-bullet';
    protected static ?string $navigationLabel = 'Cara Kerja';
    protected static ?string $navigationGroup = 'Landing Page';
    protected static ?int $navigationSort = 5;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('number')
                ->label('Nomor')->required()->maxLength(5),
            Forms\Components\Tabs::make('Languages')
                ->tabs([
                    Forms\Components\Tabs\Tab::make('Indonesia')
                        ->schema([
                            Forms\Components\TextInput::make('title_id')->label('Judul')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_id')->label('Deskripsi')->required()->rows(3),
                        ]),
                    Forms\Components\Tabs\Tab::make('English')
                        ->schema([
                            Forms\Components\TextInput::make('title_en')->label('Title')->required()->maxLength(255),
                            Forms\Components\Textarea::make('description_en')->label('Description')->required()->rows(3),
                        ]),
                ])
                ->columnSpanFull(),
            Forms\Components\TextInput::make('order')->label('Urutan')->numeric()->default(0),
            Forms\Components\Toggle::make('is_active')->label('Aktif')->default(true),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('order')->label('#')->sortable(),
                Tables\Columns\TextColumn::make('number')->label('No'),
                Tables\Columns\TextColumn::make('title_id')->label('Judul (ID)'),
                Tables\Columns\TextColumn::make('title_en')->label('Title (EN)'),
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
            'index' => Pages\ListWorkSteps::route('/'),
            'create' => Pages\CreateWorkStep::route('/create'),
            'edit' => Pages\EditWorkStep::route('/{record}/edit'),
        ];
    }
}
