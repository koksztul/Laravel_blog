<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AddMod extends Controller
{
    public function index()
    {
        return view('adminLte.addmod');
    }
    function newmod(Request $req)
    {
        DB::table('users')
        ->where('name', $req->name)
        ->update(
            [
                'id_group' => 'moderator'
            ]
            );
        return redirect('add-mod');
    }
}
