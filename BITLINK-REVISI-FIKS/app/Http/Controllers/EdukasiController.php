<?php

namespace App\Http\Controllers;

use App\Models\DataEdukasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class EdukasiController extends Controller
{
    public function index()
    {
        try {
            $edukasi = \DB::table('dataedukasi')
                ->leftJoin('data_akun_produsen', 'dataedukasi.id_akunp', '=', 'data_akun_produsen.id_user')
                ->leftJoin('admindinaspertaniannganjuk', 'dataedukasi.id_akun_dinas', '=', 'admindinaspertaniannganjuk.id_user')
                ->leftJoin('users AS produsen', 'data_akun_produsen.id_user', '=', 'produsen.id')
                ->leftJoin('users AS dinas', 'admindinaspertaniannganjuk.id_user', '=', 'dinas.id')
                ->select('dataedukasi.*', 'produsen.name AS nama_produsen', 'dinas.name AS nama_dinas')
                ->latest()
                ->get();

            // dd($edukasi);
            return view('produsen.monitoring.edukasi', [
                'getEdukasi' => $edukasi
            ]);
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }

    public function createEdukasi()
    {
        try {
            return view('produsen.monitoring.create-edukasi');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }

    public function storeEdukasiProdusen(Request $request)
    {
        try {
            $request->validate([
                'tanggal_edukasi' => 'required',
                'judul_edukasi' => 'required',
                'isi_edukasi' => 'required',
            ]);

            DataEdukasi::create([
                'id_akunp' => Auth::user()->id,
                'tanggal_edukasi' => $request->tanggal_edukasi,
                'judul_edukasi' => $request->judul_edukasi,
                'isi_edukasi' => $request->isi_edukasi,
            ]);
            return redirect('/monitoring-edukasi')->with('success', 'Berhasil tambah data edukasi');
        } catch (ValidationException $e) {
            dd($e);
            return redirect()->back()
                ->withErrors(['Semua data harus diisi!'])
                ->withInput();
        }
    }

    public function storeEdukasiDinas(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'tanggal_edukasi' => 'required',
                'judul_edukasi' => 'required',
                'isi_edukasi' => 'required',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->with('error', 'Semua data harus diisi!');
            }

            DataEdukasi::create([
                'id_akun_dinas' => Auth::user()->id,
                'tanggal_edukasi' => $request->tanggal_edukasi,
                'judul_edukasi' => $request->judul_edukasi,
                'isi_edukasi' => $request->isi_edukasi,
            ]);
            // dd($data);
            return redirect('/monitoring-edukasi')->with('success', 'Berhasil Menambahkan Data Edukasi!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }

    public function showEdukasi($id)
    {
        try {
            $edukasi = \DB::table('dataedukasi')
                ->leftJoin('data_akun_produsen', 'dataedukasi.id_akunp', '=', 'data_akun_produsen.id_user')
                ->leftJoin('admindinaspertaniannganjuk', 'dataedukasi.id_akun_dinas', '=', 'admindinaspertaniannganjuk.id_user')
                ->leftJoin('users AS produsen', 'data_akun_produsen.id_user', '=', 'produsen.id')
                ->leftJoin('users AS dinas', 'admindinaspertaniannganjuk.id_user', '=', 'dinas.id')
                ->select('dataedukasi.*', 'produsen.name AS nama_produsen', 'dinas.name AS nama_dinas')
                ->where('dataedukasi.id_edukasi', $id)
                ->first();
            // $edukasi = DataEdukasi::findOrFail($id);
            return view('produsen.monitoring.show-edukasi', ['getEdukasi' => $edukasi]);
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }

    public function updateEdukasi(Request $request, $id)
    {
        try {
            $request->validate([
                'tanggal_edukasi' => 'required',
                'judul_edukasi' => 'required',
                'isi_edukasi' => 'required',
            ]);
            $edukasi = DataEdukasi::findOrFail($id);
            $edukasi->update([
                'tanggal_edukasi' => $request->tanggal_edukasi,
                'judul_edukasi' => $request->judul_edukasi,
                'isi_edukasi' => $request->isi_edukasi,
            ]);

            return redirect('/monitoring-edukasi')->with('success', 'Berhasil update data edukasi');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }

    public function destroyEdukasi($id)
    {
        try {
            $edukasi = DataEdukasi::find($id);
            $edukasi->delete();
            return redirect('/monitoring-edukasi')->with('success', 'Berhasil hapus data edukasi');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
