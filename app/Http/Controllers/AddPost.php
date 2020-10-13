<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AddPost extends Controller
{
    public function index()
    {
        return view('adminLte.addpost');
    }
    function save(Request $req)
    {
        DB::table('posts')
        ->insert(
            [
                'title' => $req->title,
                'text' => $req->text,
                'user' => $req->user,
                'user_id' => $req->user_id
            ]
            );
        return redirect('add-post');
    }
}
