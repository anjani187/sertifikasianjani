<?php

use RalphJSmit\Laravel\SEO\Models\SEO;

return [
    'site_name' => 'PT. Jaga Aman Sejahtera',
    'sitemap' => 'sitemap.xml',
    'canonical_link' => true,
    'robots' => [
        'default' => 'max-snippet:-1,max-image-preview:large,max-video-preview:-1',
        'force_default' => false,
    ],
    'favicon' => 'favicon.ico',
    'title' => [
        'infer_title_from_url' => true,
        'suffix' => ' | Kontraktor Tambang Nikel Jakarta Barat', 
        'homepage_title' => 'Kontraktor Tambang Nikel Terpercaya | PT. Jaga Aman Sejahtera', 
    ],
    'description' => [
        'fallback' => 'Kontraktor spesialis konstruksi dan infrastruktur tambang nikel terpercaya di Jakarta Barat. Hubungi kami untuk layanan pertambangan.',
    ],
    'image' => [
        'fallback' => 'img/logo.jatra.png',
    ],
    'author' => [
        'fallback' => 'PT. Jaga Aman Sejahtera',
    ],
    'twitter' => [
        '@username' => null,
    ],
];