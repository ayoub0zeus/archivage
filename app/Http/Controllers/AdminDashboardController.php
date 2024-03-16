<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminDashboardController extends Controller
{
    public function index(){
        if(!auth()->user()->hasPermission('browser_documents')){

            abort(403,'not allowed');
        }
        return view('vendor.voyager.dashboard');
    }
}
