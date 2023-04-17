<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Note extends Model
{
    use HasFactory;
    public $guarded = ['id'];
    public $with = ['event', 'contact'];

    /**
     * Get the event that owns the Note
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function event(): BelongsTo
    {
        return $this->belongsTo(Event::class);
    }

    /**
     * Get the contact that owns the Note
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function contact(): BelongsTo
    {
        return $this->belongsTo(Contact::class);
    }

    public function company(): BelongsTo
    {
        return $this->belongsTo(company::class);
    }
    
    public function scopeFilter($query, array $filters){
        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where(function($query) use ($search){
                return $query->where('title', 'like', '%'.$search.'%')
                            ->orWhere('body', 'like', '%'.$search.'%')
                            // ->orWhereHas('company', function($query) use ($search){
                            //     return $query->where('company_name', 'like', '%'.$search.'%');
                            // })->with('company')
                            ->orWhereHas('event', function($query) use ($search){
                                return $query->where('event_name', 'like', '%'.$search.'%');
                            })->with('event')
                            ->orWhereHas('contact', function($query) use ($search){
                                return $query->where('contact_name', 'like', '%'.$search.'%');
                            })->with('contact');
            });
        });
    }
}
