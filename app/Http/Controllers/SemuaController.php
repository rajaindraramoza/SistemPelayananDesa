<?php

namespace App\Http\Controllers;

use App\Models\Jkel;
use App\Models\User;
use App\Models\Agama;
use App\Models\Surat;
use App\Models\Jsurat;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;


class SemuaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.allsurats.index', [
            'surats' => Surat::latest()->paginate(10)->withQueryString(), //untuk admin
            // jika ingin menggunakan paginate harus pakai latest tidak bisa get
            // untuk per user,'surats' => Surat::where('user_id', auth()->user()->id)->get()
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function show(Surat $surat)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function edit(Surat $surat)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Surat  $surat
     * @return \Illuminate\Http\Response
     */
    public function destroy(Surat $surat)
    {
        Surat::destroy($surat->author()->first('id'));
        return redirect('/dashboard/allsurats')->with('success', 'Surat telah dihapus!');
    }
}
