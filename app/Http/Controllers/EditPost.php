<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EditPost extends Controller
{
    public function index()
    {
        $posts = DB::select('select * from posts');
        return view('adminLte.editpost', ['posts' => $posts]);
    }
    function edit(Request $req)
    {
        DB::table('posts')
        ->where('id', $req->id)
        ->update(
            [
                'title' => $req->title,
                'text' => $req->text
            ]
            );
        return redirect('edit-post');
    }
}
