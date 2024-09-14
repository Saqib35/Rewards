<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoldRateByWeek extends Model
{
    use HasFactory;
    
    protected $table = 'gold_rates_by_week'; 

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
        'schema_week'
    ];
}
