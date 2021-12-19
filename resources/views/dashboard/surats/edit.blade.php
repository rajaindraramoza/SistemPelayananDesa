@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Ubah Permohonan Surat</h1>
  </div>

  <div class="col-lg-6">
    <form method="post" action="/dashboard/surats/{{ $surats->nama }}" class="mb-5">
      @method('put')
        @csrf
        <div class="mb-3">
          <label for="nama" class="form-label">Nama</label>
          <input type="text" class="form-control @error('nama') is-invalid @enderror" 
          id="nama" name="nama" value="{{ old('nama', $surats->nama) }}" >
          @error('nama')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>   
        <div class="mb-3">
          <label for="nik" class="form-label">Nik</label>
          <input type="text" class="form-control @error('nik') is-invalid @enderror" 
          id="nik" name="nik" required value="{{ old('nik', $surats->nik) }}">
          @error('nik')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>   
        <div class="mb-3">
          <label for="ttl" class="form-label">Tempat, tanggal lahir</label>
          <input type="text"class="form-control @error('ttl') is-invalid @enderror" id="ttl" name="ttl" required value="{{ old('ttl', $surats->ttl) }}">
          @error('ttl')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="category" class="form-label">Jenis Kelamin</label>
          <select class="form-select" name="jkel_id">
            @foreach ($jkels as $jkel)
                @if(old('jsurat_id', $surats->jkel_id)== $jkel->id)
                    <option value="{{ $jkel->id }}" selected>{{ $jkel->jenis_kelamin }}</option>
                @else
                    <option value="{{ $jkel->id }}">{{ $jkel->jenis_kelamin }}</option>
                @endif
            @endforeach
          </select>
        </div>

        <div class="mb-3">
          <label for="category" class="form-label">Agama</label>
          <select class="form-select" name="agama_id">
            @foreach ($agamas as $agama)
                @if(old('jsurat_id')== $agama->id)
                    <option value="{{ $agama->id }}" selected>{{ $agama->nama }}</option>
                @else
                    <option value="{{ $agama->id }}">{{ $agama->nama }}</option>
                @endif
            @endforeach
          </select>
        </div>

        <div class="mb-3">
          <label for="alamat" class="form-label">Alamat</label>
          <input type="text"class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" required value="{{ old('alamat', $surats->alamat) }}">
          @error('alamat')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="telepon" class="form-label">Telepon</label>
          <input type="text"class="form-control @error('telepon') is-invalid @enderror" id="telepon" name="telepon" required value="{{ old('telepon', $surats->telepon) }}">
          @error('telepon')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="pekerjaan" class="form-label">Pekerjaan</label>
          <input type="text"class="form-control @error('pekerjaan') is-invalid @enderror" id="pekerjaan" name="pekerjaan" required value="{{ old('pekerjaan', $surats->pekerjaan) }}">
          @error('pekerjaan')
              <div class="invalid-feedback">
                    {{ $message }}
              </div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="category" class="form-label">Jenis Surat</label>
          <select class="form-select" name="jsurat_id">
            @foreach ($jsurats as $jsurat)
                @if(old('jsurat_id')== $jsurat->id)
                    <option value="{{ $jsurat->id }}" selected>{{ $jsurat->nama }}</option>
                @else
                    <option value="{{ $jsurat->id }}">{{ $jsurat->nama }}</option>
                @endif
            @endforeach
          </select>
        </div>

        <button type="submit" class="btn btn-primary mb-5">Ubah Surat</button>
      </form>
</div>    
@endsection