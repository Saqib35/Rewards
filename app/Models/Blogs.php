<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blogs extends Model
{
    use HasFactory;
    
    protected $table = 'vouchers'; 

    protected $fillable = [
        'code',
        'company_name',
        'discount_value',
        'img',
    ];
}
