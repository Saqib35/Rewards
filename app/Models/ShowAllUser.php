<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoldRateByMonth extends Model
{
    use HasFactory;
    
    protected $table = 'gold_rates_by_month'; 

    protected $fillable = [
        'meta_title',
        'meta_description',
        'meta_keyword',
        'title',
        'slug',
        'description_short',
        'img',
        'alt_tag',
        'details',
        'schemaa_month'
    ];
}
