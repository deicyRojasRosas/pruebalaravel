<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model{


    protected $table = 'image';

    public function comments(){
    	return $this->hasMany('App\Comment');
    }

    public function likes(){
    	return $this->hasMany('App\Like');
    }


    public function user(){
    	return $this->belongTo('App\User', 'user_id');
    }

}
