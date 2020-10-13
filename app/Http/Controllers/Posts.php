<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;

class Posts extends Controller
{
    public function index()
    {
        $posts = DB::select('select * from posts');
        return view('adminLte.posts', ['posts' => $posts]);
    }
    function viewpost(Request $req)
    {
        $post = DB::table('posts')
        ->where('id', $req->id)
        ->get();
        $comments = DB::table('users')
        ->select('users.name', 'comments.txt')
        ->join('comments', 'users.id', 'comments.user_id')
        ->where('post_id', $req->id)
        ->get();
        return view('adminLte.post', ['post' => $post, 'comments' => $comments]);
    }
}
// $comments = DB::table('users')
//         ->select('users.name', 'comments.txt')
//         ->join('posts', 'users.id', 'posts.user_id')
//         ->join('comments', 'posts.user_id', 'comments.user_id')
//         ->where('post_id', $req->id)
//         ->distinct()
//         ->get();
//         return view('adminLte.post', ['post' => $post, 'comments' => $comments]);
