<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;

class MainSite extends Controller
{
    public function index()
    {
        $posts = DB::table('posts')
        ->take(2)->get();
        return view('adminLte.home', ['posts' => $posts]);
    }
}
