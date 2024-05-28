<?php

namespace App\Http\Controllers;

use App\Models\DataAkunProdusen;
use App\Models\DinasNganjuk;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    public function index()
    {
        return view('frontend.profile.index');
    }

    public function update(Request $request)
    {

        try {
            $request->validate([
                'name' => 'required',
                'telepon' => 'required',
                'alamat_lengkap' => 'required',
                'email' => 'required|email',
                'password' => 'required|min:6|max:30',
                // 'nama_perusahaan' => 'required',
                // 'nomor_induk_berusaha' => 'required',
            ]);

            DB::beginTransaction();
            $user = User::find(Auth::user()->id);

            $user->name = $request->name;
            $user->telepon = $request->telepon;
            $user->alamat_lengkap = $request->alamat_lengkap;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->password_not_hash = $request->password;

            $user->save();

            if($user->role)

            if ($user->role == "PRODUSEN") {
                DataAkunProdusen::where('id_user', $user->id)->update([
                    'nama_perusahaan' => $request->nama_perusahaan,
                    'nomor_induk_berusaha' => $request->nomor_induk_berusaha,
                ]);
            }

            if ($user->role == "AKUN DINAS") {
                DinasNganjuk::where('id_user', $user->id)->update([
                    'nama_instansi' => $request->nama_perusahaan,
                    'alamat_lengkap' => $request->alamat_lengkap,
                    'telepon' => $request->telepon,
                ]);
            }

            DB::commit();

            return redirect()->route('profile')->with('success', 'Data Berhasil dirubah.');
        } catch (\Throwable $th) {
            DB::rollBack();
            return redirect()->back()->with('error', 'Semua data harus diisi!');
        }
    }
}
