<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AddComm extends Controller
{
    function newcomm(Request $req)
    {
        DB::table('comments')
        ->insert(
            [
                'txt' => $req->text,
                'user_id' => $req->user_id,
                'post_id' => $req->post_id
            ]
            );
        $post = DB::table('posts')
        ->where('id', $req->post_id)
        ->get();
        $comments = DB::table('users')
        ->select('users.name', 'comments.txt')
        ->join('comments', 'users.id', 'comments.user_id')
        ->where('post_id', $req->post_id)
        ->get();
        return view('adminLte.post', ['post' => $post, 'comments' => $comments]);
    }
}
