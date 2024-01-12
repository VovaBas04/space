<?php

namespace App\Models;

use App\Services\Parseable;
use App\Services\ParseService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\URL;

/*
 * @mixin \Eloquent
 */
class SpacePort extends Model
{
    use HasFactory;
    protected $guarded=[];
    protected $hidden=[];
    public function country():BelongsTo
    {
        return $this->belongsTo(Country::class);
    }
    public function provider():BelongsTo
    {
        return $this->belongsTo(Provider::class);
    }
    public function rockets():HasMany
    {
        return $this->hasMany(Rocket::class);
    }
}
