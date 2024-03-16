<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class LoginController extends Controller
{
    // protected $redirectTo = '/home';
   
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    // Méthode pour afficher le formulaire de connexion
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Méthode pour la déconnexion
    protected function loggedOut(\Illuminate\Http\Request $request)
    {
        return redirect('/login');
    }


   

    public function login(Request $request)
{
    $credentials = $request->only('email', 'password');

    if (Auth::attempt($credentials)) {
        $user = Auth::user();

        // Check the user's role and redirect accordingly
        switch ($user->role) {
            case 'chef_service':
                return redirect()->route('service.index');
                break;
            case 'chef_division':
                return redirect()->route('division.index');
                break;
            // Add other roles if necessary
            default:
                return redirect('/home');
        }
    } else {
        return back()->withErrors(['email' => 'These credentials do not match our records.']);
    }
}
}
    

