<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class TypeOp extends Model
{
    use HasFactory;
    protected $fillable = ['type'];

    public function operations()
    {
        return $this->belongsToMany(Operation::class, 'operation_type_op', 'id_type', 'id_operation');
    }
}
