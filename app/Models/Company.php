<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Company extends Model
{
    use HasFactory;

    public $guarded = ['id'];

    /**
     * Get all of the contact for the Company
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function contact(): HasMany
    {
        return $this->hasMany(Contact::class);
    }
}
