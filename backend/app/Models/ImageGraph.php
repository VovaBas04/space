<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ImageGraph extends Model
{
    use HasFactory;

    protected $hidden=['updated_at'];
    protected $guarded=['id'];
    public function spacePort():BelongsTo
    {
        return $this->belongsTo(SpacePort::class);
    }
}
