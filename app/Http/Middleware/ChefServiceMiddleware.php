<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class ChefServiceMiddleware
{
    public function handle($request, Closure $next)
    {
        if (!Auth::guard('web')->check() || Auth::user()->role !== 'chefservice') {
            // Si l'utilisateur n'est pas authentifié en tant que chef de service, ou s'il n'a pas le bon rôle, rediriger vers une page appropriée.
            return redirect()->route('login');
        }

        return redirect()->route('service.index');
    }
}
