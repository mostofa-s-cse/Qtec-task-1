<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormFields extends Model
{
    use HasFactory;
    protected $fillable = [
        'field_id', 'form_id',
        'type','label','options'
    ];
}
