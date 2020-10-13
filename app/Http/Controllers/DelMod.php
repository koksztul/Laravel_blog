<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DelMod extends Controller
{
    public function index()
    {
        $users = DB::table('users')
        ->where('id_group', 'moderator')
        ->get();
        return view('adminLte.delmod', ['users' => $users]);
    }
    function delete(Request $req)
    {
        DB::table('users')
        ->where('name', $req->name)
        ->update(
            [
                'id_group' => '0'
            ]
            );
        return redirect('del-mod');
    }
}
