<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormSubmissions extends Model
{
    use HasFactory;
    protected $fillable = [
        'submission_id', 'form_id',
        'user_id','submission_data',
    ];
}
