<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Event extends Model
{
    use HasFactory;

    public $guarded = ['id'];
    public $fillable = ['user_id', 'event_name'];

    /**
     * Get all of the note for the Event
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
                return $query->where('event_name', 'like', '%'.$search.'%');
            });
        });
    }
}
