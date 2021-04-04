<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Post;

class AdminsController extends Controller
{
    public function index(){
        $users = User::all();
        $posts = Post::all();
        return view('Admin.dashboard')
        ->with(['users' => $users,
                'posts' => $posts
        ]);
    }
    
    public function delete($id) {

        $posts=Post::find($id);
        $posts->delete();

        return redirect('/admin')->with('message', 'Post has been deleted successfully!');
    }

    public function approve($id){

        $posts = Post::where('id', '=', e($id))->first();
        if($posts)
        {
            $posts->isApproved = 1;
            $posts->save();
            return redirect('/admin')->with('message', 'Post has been approved successfully!');
        }
    }
    public function reject($id){

        $posts = Post::where('id', '=', e($id))->first();
        if($posts)
        {
            $posts->isApproved = 0;
            $posts->save();
            return redirect('/admin')->with('message', 'Post has been rejected successfully!');
        }
    }
}
