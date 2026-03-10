<title>{{ $seo['title'] ?? 'PT. Jaga Aman Sejahtera' }}</title>
<meta name="description" content="{{ $seo['description'] ?? 'Website resmi PT. Jaga Aman Sejahtera' }}">
<meta name="keywords" content="{{ $seo['keywords'] ?? 'tambang, nikel, portofolio' }}">
<meta name="author" content="{{ $seo['author'] ?? 'PT. Jaga Aman Sejahtera' }}">
<meta name="robots" content="index, follow">

<meta property="og:title" content="{{ $seo['title'] ?? 'PT. Jaga Aman Sejahtera' }}">
<meta property="og:description" content="{{ $seo['description'] ?? 'Website resmi PT. Jaga Aman Sejahtera' }}">
<meta property="og:type" content="website">
<meta property="og:url" content="{{ $seo['url'] ?? url()->current() }}">
<meta property="og:image" content="{{ $seo['image'] ?? asset('img/logo.jatra.png') }}">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="{{ $seo['title'] ?? 'PT. Jaga Aman Sejahtera' }}">
<meta name="twitter:description" content="{{ $seo['description'] ?? 'Website resmi PT. Jaga Aman Sejahtera' }}">
<meta name="twitter:image" content="{{ $seo['image'] ?? asset('img/logo.jatra.png') }}">
