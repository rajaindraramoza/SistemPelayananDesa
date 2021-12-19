<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Post $post)
    {
        return view('home', [
            "title" => "Home",
            "active" => 'home',
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
        ]);
    }
}
