<?php

namespace App\Http\Middleware;

use Closure;

class CheckLoginAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (get_data_user('web')) {
            $level = get_data_user('web','level');
            if ($level == 1) return redirect()->to('/');

            return $next($request);
        }
        
        return redirect()->route('get.login.admin');
    }
}
