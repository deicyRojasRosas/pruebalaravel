<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Like extends Model{
  
	protected $table = 'liked';

    public function user(){
    	return $this->belongTo('App\User', 'user_id');
    }

    public function image(){
    	return $this->belongTo('App\Image', 'image_id');
    }


}
