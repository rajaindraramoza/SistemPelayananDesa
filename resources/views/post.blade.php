@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
            @if ($post->image)
                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
            @else
            @endif
            <p>By:  <a href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a> <a href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>
        <article class="my-3 fs-6">
            {!! $post->body !!}
        </article>
        
            <a href="/posts" class="d-block mt-3">Back to Posts</a>
        </div>
    </div>
</div>
    
@endsection