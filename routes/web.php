<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Models\HeroSection;
use App\Models\Service;
use App\Models\Feature;
use App\Models\Portfolio;
use App\Models\WorkStep;
use App\Models\ContactSetting;

Route::get('/', function () {
    return Inertia::render('Home', [
        'hero' => HeroSection::first(),
        'services' => Service::where('is_active', true)->orderBy('order')->get(),
        'features' => Feature::where('is_active', true)->orderBy('order')->get(),
        'portfolios' => Portfolio::where('is_active', true)->orderBy('order')->limit(3)->get(),
        'workSteps' => WorkStep::where('is_active', true)->orderBy('order')->get(),
        'contact' => ContactSetting::first(),
    ]);
});

Route::get('/portofolio', function () {
    return Inertia::render('PortofolioPage', [
        'portfolios' => Portfolio::where('is_active', true)->orderBy('order')->get(),
        'contact' => ContactSetting::first(),
    ]);
})->name('portofolio.index');
