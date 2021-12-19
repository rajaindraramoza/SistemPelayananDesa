@extends ('layouts.carousel')

@section('container')

    {{-- <h2 class="mb-3 text-center">{{ $title }}</h2> --}}
    <h2 class="mt-3"><strong>ARTIKEL TERKINI</strong></h2>

    <div class="row">
        <div class="col-lg-8">
          <div class="card">
            <div class="card-body">
                <div class="row g-0">
                    <div class="col-md-4 col-sm-6 mb-3">
                        {{-- img from database --}}
                        {{-- @if ($posts[0]->image)
                            <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="img-fluid rounded-start">
                        @endif  --}}
                        <img src="/img/desa.jpg"  alt="{{ $posts[0]->category->name }}" class="img-fluid rounded-start">
                    </div>
                    <div class="col">
                        <div class="card-body">
                            <h4><a style="text-decoration:none; color:black" href="/posts/{{ $posts[0]->slug }}"><i class="fa fa-gratipay" aria-hidden="true"></i>{{ $posts[0]->title }}</a></h4>
                            <p class="card-text"> {{ $posts[0]->excerpt }}</p>
                            <p class="card-text"><small class="text-muted"><a style="text-decoration:none">{{ $posts[0]->created_at->diffForHumans() }}</a></small></p>
                            <a href="/posts/{{ $posts[0]->slug }}" class="btn btn-success">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card">
            <div class="card-body mt-3">
                <h3 class="card-title text-center"><strong>KEPALA DESA</strong></h3>
                <div class="card-body">
                    <img src="/img/kades.png" style="width:200px; border-radius:15px; display:block; margin:auto" alt="image">
                </div>
            <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                <a href="" class="btn btn-success me-md-2" type="button">Nama Kades</a>
            </div>
            </div>
          </div>
        </div>
      </div>

    @if($posts->count())
        <div class="container">
        <div class="row">
              <h2><strong>ARTIKEL LAINNYA</strong></h2>
              @foreach($posts->skip(1) as $post)
              <div class="col-md-4 mb-3">
                <div class="card">
                  @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                @else
                @endif
                    <div class="card-body">
                      <h5 class="card-title"><a style="text-decoration:none; color:black" href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h5>
                      <p>
                        <small class="text-muted">
                        By: <a style="text-decoration:none" href="/posts?author={{ $post->author->username }}"> {{ $post->author->name }}</a>  {{ $post->created_at->diffForHumans() }}
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
