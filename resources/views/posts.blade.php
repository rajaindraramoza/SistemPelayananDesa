@extends ('layouts.main')

@section('container')
    <h2 class="my-3 text-center">{{ $title }}</h2>

    <div class="row justify-content-center mb-3">
      <div class="col-md-6">
        <form action="/posts">
          @if (request('category'))
            <input type="hidden" name="category" value="{{ request('category') }}">
          @endif
          @if (request('author'))
            <input type="hidden" name="author" value="{{ request('author') }}">
          @endif
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </div>
        </form>
      </div>
    </div>
  
    @if($posts->count())
    <div class="card mb-3">
      @if ($posts[0]->image)
        <div style="max-height: 400px; overflow:hidden">
          <img src="{{ asset('storage/' . $posts[0]->image) }}", alt="{{ $posts[0]->category->name }}" class="img-fluid">
        </div>
      @else
      @endif
        <div class="card-body text-center">
          <h3 class="card-title">{{ $posts[0]->title }}</h3>
          <p>
              <small class="text-muted">
              By: <a style="text-decoration: none" href="/posts?author={{ $posts[0]->author->username }}"> {{ $posts[0]->author->name }}</a> in <a style="text-decoration: none" href="/posts?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
            </small>
            </p>
          <p class="card-text">{{ $posts[0]->excerpt }}</p>
          <a href="/posts/{{ $posts[0]->slug }}" class="btn btn-success">Read More...</a>

          </div>
      </div>
      
      <div class="container">
          <div class="row">
              @foreach($posts->skip(1) as $post)
              <div class="col-md-4 mb-3">
                <div class="card">
                  @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                @else
                @endif
                    <div class="card-body">
                      <h5 class="card-title"><a style="text-decoration: none; color:black" href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h5>
                      <p>
                        <small class="text-muted">
                        By: <a style="text-decoration: none" href="/posts?author={{ $post->author->username }}"> {{ $post->author->name }}</a>  {{ $post->created_at->diffForHumans() }}
                      </small>
                      </p>
                      <p class="card-text">{{ $post->excerpt }}</p>
                      <a href="/posts/{{ $post->slug }}" class="btn btn-success">Read More</a>
                    </div>
                  </div>
              </div>
              @endforeach
          </div>
      </div>

      @else

      <p class="text-center fs-4">No post Found.</p>

      @endif

      <div class="d-flex justify-content-end">
      {{ $posts->links() }}
      </div>
@endsection
{{-- @dump($title) --}}
