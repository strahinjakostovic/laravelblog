@extends('layouts.app')

@section('content')
<style>
    .dash-table {
    border: solid 1px #DDEEEE;
    border-collapse: collapse;
    border-spacing: 0;
    font: normal 13px Arial, sans-serif;
}
.dash-table thead th {
    background-color: #DDEFEF;
    border: solid 1px #DDEEEE;
    color: #043535;
    padding: 10px;
    text-align: left;
    text-shadow: 1px 1px 1px #fff;
}
.dash-table tbody td {
    border: solid 1px #DDEEEE;
    color: #333;
    padding: 10px;
    text-shadow: 1px 1px 1px #fff;
}

</style>
<div class="text-center font-extrabold italic text-6xl"><span>ADMIN DASHBOARD</span></div>
<div class="sm:grid grid-cols-2 w-full bg-white gap-20">
<div class="py-20 mx-auto">
    <p class="text-center text-black text-xl pb-4">All users of the blog:</p>
    <table class="dash-table">
        <thead>
            <tr>
                <td class="">Num</td>
                <td>Name</td>
                <td>Email</td>
                <td>Role</td>
            </tr>
        </thead>
        <tbody>
        @foreach ($users as $user)
        <tr>
        <td>{{ $user->id }}</td>
        <td>{{ $user->name }}</td>
        <td>{{ $user->email }}</td>
        @if ( $user->isAdmin )
            <td>Admin</td>
        @else
        <td>User</td>      
        @endif
        </tr>
        @endforeach
        
        </tbody>
    </table>
</div>
<div class="py-20 m-auto">
    <p class="text-center text-black text-xl pb-4">All posts of the blog:</p>
    @if (session()->has('message'))
    <div class="w-full m-auto mt-10 pl-2">
        <p class=" w-full mb-4 text-gray-50 bg-green-500 rounded-2xl py-4 text-center">{{ session()->get('message') }}</p>
    </div>
@endif
    <table class="dash-table">
        <thead>
            <tr>
                <td>Num</td>
                <td>Title</td>
                <td>Description</td>
                <td>UserID</td>
                <td>Action</td>
            </tr>
        </thead>
        <tbody>
        @foreach ($posts as $post)
        <tr>
        <td>{{ $post->id }}</td>
        <td>{{ $post->title }}</td>
        <td>{{ $post->description }}</td>
        <td>{{ $post->user_id }}</td>
        <td class="inline-grid content-center gap-2">
        
            <a href={{ "approve/". $post->id }} class="uppercase bg-green-500 text-white text-xs p-1 rounded-3xl hover:bg-gray-500">Approve</a>
            <a href={{ "reject/". $post->id }} class="uppercase bg-red-700 text-white text-xs p-1 rounded-3xl hover:bg-gray-500">Reject</a>
            <a href = {{ "delete/". $post->id }} class="uppercase bg-red-700 text-white text-xs p-1 rounded-3xl hover:bg-gray-500 ">Delete</a>
            
        </td>
        </tr>
        @endforeach
        
        </tbody>
    </table>
</div>
</div>

    
@endsection