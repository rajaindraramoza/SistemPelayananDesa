@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Data Pemohon : {{ $surats->nama }}</h1>
  </div>

<h5> Nama : {{ $surats->nama }}</h5>
<h5> Nik : {{ $surats->nik }}</h5>
<h5> Tempat, tanggal lahir : {{ $surats->ttl }}</h5>
<h5> Jenis Kelamin : {{ $surats->jkel->jenis_kelamin }}</h5>
<h5> Agama : {{ $surats->agama->nama}}</h5>
<h5> Pekerjaan : {{ $surats->pekerjaan }}</h5>
<h5> Alamat : {{ $surats->alamat }}</h5>
<h5> Request : {{ $surats->jsurat->nama }}</h5>

<a href="/dashboard/surats">back to surat</a>
@endsection
