<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Gate;
use App\Ad;
use App\Category;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {


        Gate::define('adUpdate', function ($user, $ad) {
            return $user->id == $ad->user;
        });
        Gate::define('adDelete', function ($user, $ad) {
            return $user->id == $ad->id;
        });
    }
}
