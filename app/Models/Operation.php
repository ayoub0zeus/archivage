<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Operation extends Model
{
    use HasFactory;
    protected $fillable = ['type', 'id_type'];

    public function typeOps()
    {
        return $this->belongsToMany(TypeOp::class, 'operation_type_op', 'id_operation', 'id_type');
    }

    // public function documents()
    // {
    //     return $this->hasMany(OperationDocument::class, 'id_operation');
    // }
}
