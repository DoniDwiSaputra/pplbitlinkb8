<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DinasNganjuk;

class DinasNganjukController extends Controller
{
    public function index()
    {
        $admindinaspertaniannganjuk = DinasNganjuk::all();
        return view('admindinaspertaniannganjuk.index', compact('admindinaspertaniannganjuk'));
    }

    public function create()
    {
        return view('admindinaspertaniannganjuk.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_instansi' => 'required|string|max:255',
            'alamat_lengkap' => 'required|string|max:255',
            'email' => 'required|string|email|max:50',
            'telepon' => 'required|string|max:15',
            'username' => 'required|string|max:15',
            'password' => 'required|string|max:15',
        ]);

        DinasNganjuk::create($request->all());

        return redirect()->route('admindinaspertaniannganjuk.index')
            ->with('success', 'Data akun dinas berhasil ditambahkan.');
    }

    public function show(DinasNganjuk $admindinaspertaniannganjuk)
    {
        return view('admindinaspertaniannganjuk.show', compact('admindinaspertaniannganjuk'));
    }

    public function edit(DinasNganjuk $admindinaspertaniannganjuk)
    {
        return view('admindinaspertaniannganjuk.edit', compact('admindinaspertaniannganjuk'));
    }

    public function update(Request $request, DinasNganjuk $admindinaspertaniannganjuk)
    {
        $request->validate([
            'nama_instansi' => 'required|string|max:255',
            'alamat_lengkap' => 'required|string|max:255',
            'email' => 'required|string|email|max:50',
            'telepon' => 'required|string|max:15',
            'username' => 'required|string|max:15',
            'password' => 'required|string|max:15',
        ]);

        $admindinaspertaniannganjuk->update($request->all());

        return redirect()->route('admindinaspertaniannganjuk.index')
            ->with('success', 'Data akun dinas berhasil diperbarui.');
    }

    public function destroy(DinasNganjuk $admindinaspertaniannganjuk)
    {
        $admindinaspertaniannganjuk->delete();

        return redirect()->route('admindinaspertaniannganjuk.index')
            ->with('success', 'Data akun dinas berhasil dihapus.');
    }
}
