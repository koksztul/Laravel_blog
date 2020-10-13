<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DelPost extends Controller
{
    public function index()
    {
        $posts = DB::select('select * from posts');
        return view('adminLte.delpost', ['posts' => $posts]);
    }
    function delete(Request $req)
    {
        DB::delete('delete from posts where id = ?',[$req->id]);
        return redirect('del-post');
    }
}
