@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Semua Surat</h1>
  </div>

  @if(session()->has('success'))
    <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
    </div>
  @endif
  {{-- <a href="/dashboard/surats/create" class="btn btn-primary mb-2">Tambah Surat</a> --}}
  <div class="table-responsive">
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nama</th>
          <th scope="col">Tempat, tanggal lahir</th>
          <th scope="col">Jenis Kelamin</th>
          <th scope="col">Request</th>
          <th scope="col">Akun</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($surats as $surat)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ $surat->nama }}</td>
          <td>{{ $surat->ttl }}</td>
          <td>{{ $surat->jkel->jenis_kelamin }}</td>
          <td>{{ $surat->jsurat->nama}}</td>
          <td>{{ $surat->author->name}}</td>
          <td>
            <a href="/dashboard/surats/{{ $surat->nama }}" class="badge bg-info"><span data-feather="eye"></span></a>
            <a href="/dashboard/surats/{{ $surat->nama }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>

            <form action="/dashboard/surats/{{ $surat->nama }}" method="post" class="d-inline">
              @method('DELETE')
              @csrf
              <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span></button>            
          </form>
        </td>
      </tr>   
      @endforeach
    </tbody>
  </table>

  {{-- @dd($surat->id); --}}
  <div class="d-flex justify-content-end">
        {{ $surats->links() }}
        </div>
  </div>
  
@endsection
