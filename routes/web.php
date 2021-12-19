<?php

// use App\Models\Post;
// use App\Models\User;

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SemuaController;
use App\Http\Controllers\SuratController;
use App\Http\Controllers\AllPostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index']);

// Route::get('/', function () {
//     return view('home', [
//         "title" => "Home",
//         "active" => 'home'
//     ]);
// });

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        'active' => 'about'
    ]);
});

Route::get('/blog', function () {
    return view('posts', [
        "title" => "Post",
        "active" => 'post'
    ]);
});
Route::get('/kontak', function () {
    return view('kontak', [
        "title" => "Kontak",
        "active" => 'kontak'
    ]);
});

//halaman single post
Route::get('/posts', [PostController::class, 'index']);
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function () {
    return view('categories', [
        'title' => 'Post Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});


//sudah ditangani diquery model
// Route::get('/categories/{category:slug}', function (Category $category) {
//     return view('posts', [
//         'title' => "Post By Category : $category->name",
//         'active' => 'categories',
//         'posts' => $category->posts->load('category', 'author')
//         // 'category' => $category->name
//     ]);
// });

// Route::get('/authors/{author:username}', function (User $author) {
//     return view('posts', [
//         'title' => "Post By Author : $author->name",
//         'active' => 'authors',
//         'posts' => $author->posts->load('category', 'author')
//     ]);
// });

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/dashboard/register', [RegisterController::class, 'index'])->middleware('admin');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function () {
    return view('dashboard.index');
})->middleware('auth');


// saat menggunakan resource kita tidak bisa menggunakan route model binding (post:slug)
// untuk mengatasi itu kita harus mengubah/membuat slug itu sebagai nilai default dari pencarian 
// tanpa menggunakan route model binding kita bisa menggunakan slug sebagai default pencarian
// didalam dokumentasi laravel disebut customizing the key

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/allposts', AllPostController::class)->middleware('admin');

Route::resource('/dashboard/surats', SuratController::class)->middleware('auth');

Route::resource('/dashboard/allsurats', SemuaController::class)->middleware('admin');
