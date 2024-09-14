<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomePageGoldRate extends Model
{
    use HasFactory;

    protected $table = 'home_pages_gold_rate'; 

    protected $fillable = [
        'content',
        'schmea_today',
        'meta_title',
        'meta_description',
        'img',
    ];
}
