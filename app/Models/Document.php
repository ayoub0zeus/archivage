<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Document extends Model
{
    use HasFactory;
    protected $fillable = [
        'ref',
        'nom_document',
        'chemin ',
        'id_user',
        'id_service'];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    public function service()
    {
        return $this->belongsTo(Service::class, 'id_service');
    }

    public function division()
    {
        return $this->belongsTo(Division::class, 'id_division');
    }

    public function etapDoc()
    {
        return $this->hasOne(EtapDoc::class, 'id_document');
    }

    public function operations()
    {
        return $this->hasMany(OperationDocument::class, 'id_document');
    }
}
