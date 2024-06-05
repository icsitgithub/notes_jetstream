<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Social_media extends Model
{
    use HasFactory;

    public $guarded = ['id'];

    public function company(): BelongsToMany
    {
        return $this->belongsToMany(Company::class);
    }
}
