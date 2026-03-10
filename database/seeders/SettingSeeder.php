<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    public function run(): void
    {
        $sections = [
            // BERANDA
            ['beranda_cta', 'CTA Tentang Kami', 'beranda'],
            ['beranda_pencapaian', 'Pencapaian', 'beranda'],
            ['beranda_portofolio', 'Portofolio', 'beranda'],

            // TENTANG KAMI
            ['tentang_sejarah', 'Sejarah', 'tentang_kami'],
            ['tentang_visi_misi', 'Visi & Misi', 'tentang_kami'],
            ['tentang_filosofi_logo', 'Filosofi Logo', 'tentang_kami'],
            ['tentang_nilai_perusahaan', 'Nilai Perusahaan', 'tentang_kami'],
            ['tentang_rekam_jejak', 'Rekam Jejak', 'tentang_kami'],
            ['tentang_struktur_organisasi', 'Struktur Organisasi', 'tentang_kami'],

            // LAYANAN
            ['layanan_utama', 'Layanan Kami', 'layanan'],
            ['layanan_lokasi_site', 'Lokasi Site', 'layanan'],
            ['layanan_armada', 'Armada', 'layanan'],

            // TATA KELOLA
            ['tata_kelola', 'Tata Kelola', 'tata_kelola'],

            // KARIR
            ['karir_pendahuluan', 'Pendahuluan', 'karir'],
            ['karir_lowongan', 'Lowongan', 'karir'],
            ['karir_galeri', 'Galeri', 'karir'],
        ];

        foreach ($sections as [$key, $name, $page]) {
            Setting::firstOrCreate(
                ['feature_key' => $key],
                [
                    'feature_name' => $name,
                    'page' => $page,
                    'is_active' => true
                ]
            );
        }
    }
}
