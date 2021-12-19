@extends('dashboard.layouts.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-6">
        <main class="form-registration">
            <h1 class="h3 mb-3 fw-normal text-center mt-5">Tambah User</h1>
            <form action="/register" method="post">   
                @csrf
              <div class="form-floating">
                <input type="name" name="name" class="form-control rounded-top @error('name') is-invalid
                @enderror" id="name" placeholder="name" required value="{{ old('name') }}" autofocus>
                <label for="name">Nama</label>
                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="nik" name="nik" class="form-control @error('nik') is-invalid
                @enderror" id="nik" placeholder="nik" required value="{{ old('nik') }}">
                <label for="nik">NIK</label>
                @error('nik')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="username" name="username" class="form-control @error('username') is-invalid
                @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email') is-invalid
                @enderror" id="email" placeholder="name@example.com" required value="{{ old('email') }}">
                <label for="email">Email address</label>
                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control @error('password') is-invalid
                @enderror rounded-bottom" id="password" placeholder="Password" required>
                <label for="password">Password</label>
                @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror
            </div>
                <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>
                <p class="mt-3 mb-3 text-muted text-center">&copy; 2021 - Raja Indra Ramoza</p>
            </form>
          </main>        
    </div>
</div>

@endsection