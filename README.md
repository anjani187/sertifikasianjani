# 🌐 Website Company Profile PT. Jaga Aman Sejahtera

**Website Company Profile PT. Jaga Aman Sejahtera** adalah sebuah sistem **CMS (Content Management System)** modern yang dikembangkan menggunakan **Laravel 11**. Aplikasi ini dirancang untuk memungkinkan perusahaan menampilkan profil, layanan, dan portofolio secara profesional, sekaligus memberikan kemudahan bagi manajemen untuk mengelola seluruh konten website melalui *dashboard* admin yang intuitif.



---

## 🏗️ Arsitektur Aplikasi

Aplikasi ini dibagi menjadi dua (2) bagian utama yang terpisah tetapi terintegrasi:

1.  **Frontend (Website Pengunjung)**: Halaman publik yang diakses oleh pengguna umum untuk mendapatkan informasi perusahaan.
2.  **Backend (CMS Admin Panel)**: Halaman khusus yang dilindungi (*authenticated*) bagi administrator untuk mengelola dan memperbarui konten website.

---

## 📌 Fitur Utama

### Website Pengunjung (Frontend)

Bagian ini berfokus pada penyampaian informasi perusahaan kepada publik:

* **Halaman Beranda**: Menyajikan gambaran umum dengan *Hero Section*, *Call-to-Action* (Tentang Kami dan Layanan Kami), dan *Portofolio* unggulan.
* **Tentang Kami**: Menampilkan detail mendalam mengenai perusahaan: **Sejarah JATRA**, **Visi Misi**, **Filosofi Logo**, **Nilai Perusahaan**, **Rekam Jejak**, dan **Struktur Organisasi**.
* **Layanan Kami**: Menampilkan katalog **Layanan Kami**, informasi **Lokasi Kami**, dan detail mengenai **Armada Kami**.
* **Tata Kelola (Governance)**: Menyediakan informasi penting terkait integritas perusahaan, mencakup **Kode Etik**, **Kebijakan Anti Korupsi**, proses **Internal Audit**, dan **Manajemen Resiko**.
* **Karir**: Menampilkan **lowongan karir** yang tersedia dan **Galeri** kegiatan perusahaan.

### Admin Panel (Backend CMS)

Bagian ini dirancang untuk memudahkan administrator mengelola konten tanpa perlu menyentuh kode:

* **Manajemen Pengguna (User Management)**: Halaman untuk menampilkan, menambah, dan menghapus *user* yang memiliki akses ke dashboard admin.
* **Konten Beranda**:
    * **Hero Section**: Mengelola *hero title*, *subtitle*, *description*, dan mengunggah **3 gambar hero**.
    * **Tentang Kami (CTA)**: Mengelola *title*, *description*, dan **6 gambar** yang ditampilkan pada bagian CTA Tentang Kami.
    * **Portofolio**: Fitur CRUD untuk mengelola **Gambar, Judul, dan Deskripsi** setiap item portofolio.
* **Konten Tentang Kami (Detail)**:
    * **Sejarah**: Mengelola judul dan gambar pendukung Sejarah.
    * **Visi Misi**: Mengedit teks Visi dan Misi Perusahaan.
    * **Filosofi Logo**: Mengelola konten Filosofi Logo.
* **Tata Kelola**: Mengelola konten untuk **Kode Etik, Anti Korupsi, Internal Audit, dan Manajemen Resiko**.
* **Karir & Galeri**: Mengelola daftar **lowongan karir** dan mengunggah/menghapus konten **Galeri**.

---

## 🛠️ Teknologi yang Digunakan

| Kategori | Teknologi | Detail |
| **Backend Framework** | Laravel 11 | Kerangka kerja PHP modern dan stabil. |
| **Bahasa Pemrograman** | PHP 8+ | Bahasa utama pengembangan. |
| **Frontend** | Blade, Bootstrap, jQuery,   | Blade Templating, Bootstrap untuk *styling*, dan Chart.js untuk visualisasi  |
| **Database** | PhPMyAdmin | Sistem manajemen basis data relasional. |
| **PDF Generation** | DOMPDF / TCPDF | Library pihak ketiga untuk menghasilkan laporan. |

---

## ⚙️ Panduan Instalasi Lokal

Ikuti langkah-langkah di bawah ini untuk menginstal dan menjalankan aplikasi pada lingkungan lokal Anda.

### 1. Clone Repository

Ganti nama repositori di bawah ini jika repositori Anda berbeda dari yang lama.

```sh
# git clone [https://github.com/allii98/website-jaga-aman-sejahtera.git](https://github.com/allii98/website-jaga-aman-sejahtera.git)
# cd website-jaga-aman-sejahtera

### 2. Install Dependencies

```sh
composer install
npm install
```

### 3. Konfigurasi Environment

Buat file `.env` dari template bawaan:

```sh
cp .env.example .env
```

Lalu, atur konfigurasi database dan aplikasi.

### 4. Generate Key & Migrasi Database

```sh
php artisan key:generate
php artisan migrate --seed
```

### 5. Jalankan Server

```sh
php artisan serve
```

Akses aplikasi melalui `http://127.0.0.1:8000`

## 🚀 Deployment

Untuk produksi, gunakan server seperti **Apache** atau **Nginx** dengan **Supervisor** untuk queue worker.

## 📄 Lisensi

Proyek ini menggunakan lisensi **MIT**.

---

💡 _Jika ada pertanyaan atau perbaikan, silakan buat issue atau pull request di repository ini._