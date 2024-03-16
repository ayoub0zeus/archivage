<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
// use TCG\Voyager\Widgets\WidgetsServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        // ... (your other service registrations here)
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // Register your custom widget using the updated method
        // $this->app[WidgetsServiceProvider::class]->addWidget(CustomWidget::class);
    }
}
