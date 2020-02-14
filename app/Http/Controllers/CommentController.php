<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Comment;
use App\Ad;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function addcomment(Ad $ad){
        return view('skelbimai.pages.addcomment', compact('ad'));
    }
    public function storecomment(Ad $ad)
    {
        Comment::create([
            'comment' => request('comment'),
            'ad_id' => $ad->id,
            'user_id' => Auth()->id()

        ]);
        return redirect('skelbimas/'.$ad->id);
    }
}
