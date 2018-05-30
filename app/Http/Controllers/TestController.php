<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function getList(Request $request) {
        $users = User::with(['events' => function ($query) {
            $query->orderBy('event_at', 'asc');
        }])->get()->toArray();


        foreach ($users as &$user) {
            $last_start_work = strtotime($user['events'][0]['event_at']);
            $total_work = 0;

           // dd($user['events']);

            foreach ($user['events'] as $index => $event) {
                if ($index == 0) {
                    continue;
                }

                switch ($event['type']) {
                    case "working":
                        $last_start_work = strtotime($event['event_at']);

                        break;
                    case "break":
                    case "home":
                        $total_work += strtotime($event['event_at']) - $last_start_work;
                }
            }

            $user["total_work"] = $total_work/60/60;
            $user["total_work_view"] = gmdate("H:i:s", $total_work);
        }

        unset($user);

        return view("index", [
            'users' => $users
        ]);
    }
}
