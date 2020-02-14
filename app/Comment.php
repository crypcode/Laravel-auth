<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = ['name','comment','ad_id','user_id'];

    public function ad(){
        return $this->belongsTo(Ad::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}
