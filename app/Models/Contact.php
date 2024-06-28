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
    public $with = ['company','user'];
    
    /**
     * Get the company that owns the Contact
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function company(): BelongsTo
    {
        return $this->belongsTo(Company::class);
    }

    public function editor(): BelongsTo
    {
        return $this->belongsTo(User::class, 'edited_by');
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
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

    public function scopeFilter($query, array $filters){
        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where(function($query) use ($search){
                return $query->where('first_name', 'like', '%'.$search.'%')
                            ->orWhere('last_name', 'like', '%'.$search.'%')
                            ->orWhere('phone_number', 'like', '%'.$search.'%')
                            ->orWhere('email', 'like', '%'.$search.'%')
                            ->orWhere('title', 'like', '%'.$search.'%')
                            ->orWhereHas('company', function($query) use ($search){
                                return $query->where('company_name', 'like', '%'.$search.'%');
                            })->with('company');
            });
        });
    }
}