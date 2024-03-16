<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class DocEtap extends Model
{   
    use HasFactory;
    protected $fillable = ['etape'];
    public function documents()
    {
        return $this->hasMany(Document::class, 'id_etape');
    }
}
