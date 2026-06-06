<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Models\HeroSection;
use App\Models\Service;
use App\Models\Feature;
use App\Models\Portfolio;
use App\Models\WorkStep;
use App\Models\ContactSetting;
use App\Models\ContactMessage;
use Illuminate\Http\Request;

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

Route::post('/contact-messages', function (Request $request) {
    $validated = $request->validate([
        'name' => ['required', 'string', 'max:255'],
        'email' => ['required', 'email', 'max:255'],
        'phone' => ['required', 'string', 'max:30'],
        'company' => ['nullable', 'string', 'max:255'],
        'message' => ['required', 'string', 'max:5000'],
    ]);

    ContactMessage::create($validated);

    return back()->with('success', 'contact-message-sent');
})->name('contact-messages.store')->middleware('throttle:10,1');
