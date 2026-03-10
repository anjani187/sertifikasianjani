<?php

namespace Database\Seeders;

use App\Models\Pencapaian;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class pencapaianSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
        ['section_key' => 'banner_top', 'title' => '70.000+', 'unit' => 'Ton', 'subtitle' => 'Hasilkan', 'description' => 'kandungan nikel dalam MHP', 'image' => 'ore.png'],
        ['section_key' => 'card_left', 'title' => '250', 'unit' => 'Orang', 'subtitle' => 'Berasal dari', 'description' => null, 'image' => 'worker.jpg'],
        ['section_key' => 'card_middle', 'title' => '232', 'unit' => 'Armada', 'subtitle' => 'Operasional', 'description' => 'Siap mendukung produktivitas', 'image' => 'truck.jpg'],
        ['section_key' => 'card_right', 'title' => '100%', 'unit' => 'Kepatuhan K3', 'subtitle' => 'Keselamatan', 'description' => 'Standar kerja utama', 'image' => 'safety.jpg'],
    ];

    foreach ($data as $item) {
       Pencapaian::updateOrCreate(['section_key' => $item['section_key']], $item);
    }
    }
}
