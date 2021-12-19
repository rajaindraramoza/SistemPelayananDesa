@extends('layouts.login')

@section('container')
<div class="row justify-content-center">
    <div class="col-md-4">
        {{-- flash data --}}
        @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">{{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="close"></button>
        </div>
        @endif
        
        {{-- flash data --}}
        @if(session()->has('LoginError'))
        <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">{{ session('LoginError') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="close"></button>
        </div>
        @endif
        
        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal text-center mt-3">Login</h1>
            <form action="/login" method="post">
                @csrf   
              <div class="form-floating">
                <input type="nik" name="nik" class="form-control @error('nik') is-invalid @enderror" id="nik" placeholder="NIK" autofocus required value="{{ old('nik') }}">
                <label for="floatingNik">NIK</label>
                @error('nik')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                <label for="floatingPassword">Password</label>
            </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
                <p class="my-3 text-muted text-center">&copy; 2021 - Raja Indra Ramoza</p>
            </form>
          </main>
    </div>
          <div class="row justify-content-center mt-5">
              <div class="col">
                <p>Admin</p>
                <ul>
                    <li>
                        Nik = 123
                    </li>
                    <li>
                        Password = admin 
                    </li>
                </ul>
              </div>
              <div class="col">
                <p>UserPertama</p>
                <ul>
                    <li>
                        Nik = 1234
                    </li>
                    <li>
                        Password = user
                    </li>
                </ul>
              </div>
              <div class="col">
                <p>UserKedua</p>
                <ul>
                    <li>
                        Nik = 12345
                    </li>
                    <li>
                        Password = user
                    </li>
                </ul>
            </div>
              <div class="col">
                <p>Kepala Desa</p>
                <ul>
                    <li>
                        Nik = 12
                    </li>
                    <li>
                        Password = admin
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

@endsection