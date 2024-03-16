<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RestrictAdminAccess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // return $next($request);
        if (Auth::check()) {
            // Check the user's role
            $user = Auth::user();

            // Allow users with the 'admin' role to access all admin routes
            if ($user->hasRole('admin')) {
                return $next($request);
            }
        }

        // Redirect unauthorized users to a specific route or show an error
        return redirect('/home')->with('error', 'Unauthorized access.');
    }
    
}
