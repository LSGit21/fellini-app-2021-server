<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Cast extends Model
{
    use HasFactory;

    public function film(): BelongsTo
    {
        return $this->belongsTo(Film::class);
    }
}
