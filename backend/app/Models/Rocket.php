<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rocket extends Model
{
    use HasFactory;
    protected $guarded=[];
    protected $hidden=[];
    public function spacePort()
    {
        return $this->belongsTo(SpacePort::class);
    }
    protected $casts=[
        'height'=>'float'
    ];
}
