<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
/*
 * @mixin \Eloquent
 */
class Provider extends Model
{
    use HasFactory;
    protected $guarded=[];
    protected $hidden=[];
}
