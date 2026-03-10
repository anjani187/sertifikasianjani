<?php

use App\Models\Setting;
use Illuminate\Support\Facades\Cache;

if (! function_exists('feature_active')) {
   function feature_active(string $key): bool
{
    return Cache::remember(
        'feature_'.$key,
        now()->addMinutes(10),
        function () use ($key) {
            return Setting::where('feature_key', $key)
                ->where('is_active', true)
                ->exists();
        }
    );
}

}
