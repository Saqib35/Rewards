<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebStory extends Model
{
    use HasFactory;
    protected $table = 'web_stories'; 

    protected $fillable = ['image_path_one', 'image_path_two', 'image_path_three','title','slug','description'];

}
