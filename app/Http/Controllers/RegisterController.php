<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('dashboard.register.index', [
            'title' => 'Register',
            'active' => 'register'
        ]);
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'nik' => ['required', 'min:3', 'max:255', 'unique:users'],
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            // 'email' => 'required|email:dns|unique:users',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:3|max:255'
        ]);

        //enskripsi password
        // $validatedData['password'] = bcrypt($validatedData['password']);
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        //flash data
        // $request->session()->flash('success', 'Registration has successed! please login');

        return redirect('/login')->with('success', 'Registration has successed! please login');
    }
}
