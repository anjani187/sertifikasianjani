<?php

namespace App\Http\Controllers\editor;

use App\Http\Controllers\Controller;
use App\Models\Daftar;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\Validator;

class DaftarController extends Controller
{
    public function CVindex()
    {
        return view('pages.editor.corevalue.index');
    }

    public function getCV(Request $request): JsonResponse
{
    try {

        $search = $request->input('search','');
        $start  = intval($request->input('start',0));
        $limit  = intval($request->input('length',10));

        $query = Daftar::with('status');

        if(!empty($search)){
            $query->where('judul_tugas','LIKE',"%{$search}%")
                  ->orWhere('deskripsi','LIKE',"%{$search}%");
        }

        $recordsTotal = $query->count();

        $data = $query->offset($start)
                      ->limit($limit)
                      ->orderBy('id','desc')
                      ->get();

        return response()->json([
            'draw'=>intval($request->input('draw')),
            'recordsTotal'=>$recordsTotal,
            'recordsFiltered'=>$recordsTotal,
            'data'=>$data
        ]);

    } catch(Exception $e){

        return response()->json([
            'error'=>$e->getMessage()
        ],500);

    }
}
    public function storeCV(Request $request): JsonResponse
    {
        try {
            $validator = Validator::make($request->all(), [
                'judul_tugas' => 'required|string|max:255',
                'deskripsi' => 'required|string',
                'deadline' => 'required|date',
                'status_id' => 'required|exists:status,id',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => 0,
                    'messages' => implode(', ', $validator->errors()->all())
                ]);
            }

            $data = $validator->validated();

            Daftar::create($data);

            return response()->json(['success' => 1, 'messages' => 'Berhasil menambah data']);

        } catch (Exception $e) {
            Log::error('storeData Exception: ' . $e->getMessage());
            return response()->json(['success' => 0, 'messages' => 'Terjadi kesalahan pada server']);
        }
    }


    public function detailCV(Request $request): JsonResponse
    {
        $daftar = Daftar::find($request->id);

        if ($daftar) {
            return response()->json(['success' => 1, 'data' => $daftar]);
        }

        return response()->json(['success' => 0, 'messages' => 'Data tidak ditemukan']);
    }

   
    public function updateCV(Request $request): JsonResponse
    {
        try {
            $validator = Validator::make($request->all(), [
                'judul_tugas' => 'required|string|max:255',
                'deskripsi' => 'required|string',
                'deadline' => 'required|date',
                'status_id' => 'required|exists:status,id',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => 0,
                    'messages' => implode(', ', $validator->errors()->all())
                ]);
            }

            $daftar = Daftar::find($request->id);

            if (!$daftar) {
                return response()->json(['success' => 0, 'messages' => 'Data tidak ditemukan']);
            }

            $data = $validator->validated();

            $daftar->update($data);

            return response()->json(['success' => 1, 'messages' => 'Berhasil mengubah data']);

        } catch (Exception $e) {
            Log::error('updateData Exception: '.$e->getMessage());
            return response()->json(['success' => 0, 'messages' => 'Terjadi kesalahan pada server']);
        }
    }

    
    public function deleteCV(Request $request): JsonResponse
    {
        try {
            $daftar = Daftar::find($request->id);

            if (!$daftar) {
                return response()->json(['success' => 0, 'messages' => 'Data tidak ditemukan']);
            }

            $daftar->delete();

            return response()->json(['success' => 1, 'messages' => 'Berhasil menghapus data']);

        } catch (Exception $e) {
            Log::error('deleteData Exception: '.$e->getMessage());
            return response()->json(['success' => 0, 'messages' => 'Terjadi kesalahan pada server']);
        }
    }
}
