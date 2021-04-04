@extends('layouts.app')

@section('content')
<style>
    .over{
        white-space: nowrap;  
        overflow: hidden;
        text-overflow: ellipsis; 
    }
</style>

<div class="w-4/5 m-auto text-center">
    <div class="py-15 border-b border-gray-200">
    <h1 class="text-6xl">Blog Posts</h1>
    </div> 
</div>

@if (session()->has('message'))
    <div class="w-full m-auto mt-10 pl-2">
        <p class=" w-full mb-4 text-gray-50 bg-green-500 rounded-2xl py-4 text-center">{{ session()->get('message') }}</p>
    </div>
@endif
@foreach ($posts as $post )
<div class="sm:grid grid-cols-2 gap-20 w-4/5 mx-auto py-15 border-b border-gray-200">
    <div>
        <img src="{{ asset('images/' . $post->image_path) }}" alt="">
    </div>
    <div>
        <h2 class="text-gray-700 font-bold text-5xl pb-4">{{ $post->title }}</h2>
        @if (isset(Auth::user()->id) && Auth::user()->id == $post->user_id)
        <span class="float-right">
            <a href="/blog/{{ $post->slug }}/edit" class="text-gray-700 italic hover:text-blue-900 hover:underline">Edit post</a>
        </span>
        <span class="float-right">
            <form action="/blog/{{ $post->slug }}" method="POST">
            @csrf
            @method('delete')

            <button class="text-red-500 pr-3">
                Delete
            </button>
            </form>
        </span>
        @endif
        <span class="text-gray-500">{{ $post->user->name }}</span>, Created on {{ date('jS M Y', strtotime($post->updated_at)) }}
        <div class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light over">
            {{ $post->description }}
        </div>
        <a href="/blog/{{ $post->slug }}" class="uppercase bg-blue-500 text-gray-100 text-lg font-extrabold py-4 px-8 rounded-3xl hover:bg-gray-500">Continue reading</a>
    </div>
    </div>  
@endforeach


@endsection