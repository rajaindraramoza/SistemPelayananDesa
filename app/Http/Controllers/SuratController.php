<?php

namespace App\Http\Controllers;

use App\Models\Jkel;
use App\Models\User;
use App\Models\Agama;
use App\Models\Surat;
use App\Models\Jsurat;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class SuratController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('dashboard.surats.index', [
            // 'surats' => Surat::latest()->paginate(10)->withQueryString()
            // jika ingin menggunakan paginate harus pakai latest tidak bisa get
            'surats' => Surat::where('user_id', auth()->user()->id)->get(),

        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.surats.create', [
            'jkels' => Jkel::all(),
            'jsurats' => Jsurat::all(),
            'agamas' => Agama::all(),
            'users' => User::all(),
        ]);

        $validatedData['user_id'] = auth()->user()->id;
        Surat::create($validatedData);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama' => 'required|max:255',
            'nik' => 'required|integer',
            'ttl' => 'required|max:255',
            'jkel_id' => 'required',
            'agama_id' => 'required',
            'alamat' => 'required|max:255',
            'telepon' => 'required|max:255',
            'pekerjaan' => 'required|max:255',
            'jsurat_id' => 'required',
        ]);

        $validatedData['user_id'] = auth()->user()->id;
        Surat::create($validatedData);
        return redirect('/dashboard/surats')->with('success', 'Surat Berhasil Ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function show(Surat $surat)
    {
        return view('dashboard.surats.show', [
            'surats' => $surat
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function edit(Surat $surat)
    {
        return view('dashboard.surats.edit', [
            'surats' => $surat,
            'jsurats' => Surat::all(),
            'jkels' => Jkel::all(),
            'jsurats' => Jsurat::all(),
            'agamas' => Agama::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Surat $surat)
    {
        $rules = [
            'nama' => 'required|max:255',
            'nik' => 'required|integer',
            'ttl' => 'required|max:255',
            'jkel_id' => 'required',
            'agama_id' => 'required',
            'alamat' => 'required|max:255',
            'telepon' => 'required|max:255',
            'pekerjaan' => 'required|max:255',
            'jsurat_id' => 'required',
        ];

        // $validatedData['user_id'] = auth()->user()->id;
        $validatedData = $request->validate($rules);
        Surat::where('id', $surat->id)->update($validatedData);
        return redirect('/dashboard/surats')->with('success', 'Surat Berhasil Ditambahkan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function destroy(Surat $surat)
    {
        Surat::destroy($surat->id);
        return redirect('/dashboard/surats')->with('success', 'Surat telah dihapus!');
    }
}
