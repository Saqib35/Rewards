<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UpdatedPrice extends Model
{
    use HasFactory;
    protected $table = 'updated_price'; 

    protected $fillable = [
        'kerat24k',
        'kerat22k',
        'kerat21k',
        'kerat20k',
        'kerat18k',
        'gold_per_ounce_dollar'
    ];
}
