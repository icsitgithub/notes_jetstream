<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Contact extends Model
{
    use HasFactory;

    public $guarded = ['id'];
    public $with = ['company'];
    
    /**
     * Get the company that owns the Contact
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function company(): BelongsTo
    {
        return $this->belongsTo(Company::class);
    }

    /**
     * Get all of the note for the Contact
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function note(): HasMany
    {
        return $this->hasMany(Note::class);
    }
}