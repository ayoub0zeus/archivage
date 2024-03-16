<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\Auth; // Import for authorization check (optional)

class CustomWidget extends BaseDimmer
{
    public function run()
    {
        // Fetch or calculate your custom data
        $data = [
            // Your data to be displayed on the widget
        ];

        // Optional: Authorization check to control widget visibility (if needed)
        if (Auth::user()->hasPermission('view_custom_widget')) {
            return view('widgets.custom_widget', compact('data'));
        }

        return null; // Don't display the widget if user lacks permission
    }

    public function shouldBeDisplayed()
    {
        // Optional: Adjust display logic based on specific conditions
        return true; // Or return a conditional expression for more control
    }
}
