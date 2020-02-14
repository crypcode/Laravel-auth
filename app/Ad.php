<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ad extends Model
{
   protected $fillable = ['catid','pavadinimas','aprasymas','price','email','location','phone', 'nuotrauka','user'];

   public function comments(){
       return $this->hasMany(Comment::class);
   }
   public function user(){
       return $this->belongsTo(User::class);
   }
}
