<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Historique extends Model
{
    use HasFactorytory;
    protected $fillable = ['id_user', 'id_document'];
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function document()
    {
        return $this->belongsTo(Document::class, 'id_document');
    }
}
