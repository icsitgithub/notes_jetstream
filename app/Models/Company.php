<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Company extends Model
{
    use HasFactory;

    public $guarded = ['id'];
    public $with = ['user'];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function editor(): BelongsTo
    {
        return $this->belongsTo(User::class, 'edited_by');
    }

    /**
     * Get all of the contact for the Company
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function contact(): HasMany
    {
        return $this->hasMany(Contact::class);
    }

    public function scopeFilter($query, array $filters){
        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where(function($query) use ($search){
                return $query->where('company_name', 'like', '%'.$search.'%')
                            ->orWhere('company_country', 'like', '%'.$search.'%')
                            ->orWhere('agent_type', 'like', '%'.$search.'%')
                            ->orWhere('business_source', 'like', '%'.$search.'%');
            });
        });
    }
}
