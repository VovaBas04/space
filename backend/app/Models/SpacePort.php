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
    public function imageGraphs():HasMany
    {
        return $this->hasMany(ImageGraph::class);
    }
    public function imagePlaces():HasMany
    {
        return $this->hasMany(ImagePlace::class);
    }
    public function imageRockets():HasMany
    {
        return $this->hasMany(ImageRocket::class);
    }
}
