<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Document;

class UserController extends Controller
{
    // Afficher tous les documents de l'utilisateur
    public function index()
    {
        $documents = Auth::user()->documents;
        return view('user.index', compact('documents'));
    }

    // Afficher le formulaire pour créer un nouveau document
    public function create()
    {
        return view('user.create');
    }

    // Enregistrer un nouveau document pour l'utilisateur authentifié
    public function store(Request $request)
    {
        $request->validate([
            'document_name' => 'required|string|max:255',
            'document_repository' => 'required|string|max:255',
            'file' => 'required|file',
            'date' => 'required|date',
        ]);

        $file = $request->file('file');
        $filePath = $file->store('documents');

        Auth::user()->documents()->create([
            'name' => $request->document_name,
            'repository' => $request->document_repository,
            'file_path' => $filePath,
            'date' => $request->date,
        ]);

        return redirect()->route('documents.index')->with('success', 'Document uploaded successfully.');
    }

    // Afficher un document spécifique de l'utilisateur
    public function show(Document $document)
    {
        // Vérifier si le document appartient à l'utilisateur authentifié
        if ($document->user_id !== Auth::id()) {
            return redirect()->route('documents.index')->with('error', 'You do not have permission to view this document.');
        }

        return view('user.show', compact('document'));
    }

    // Afficher le formulaire pour modifier un document de l'utilisateur
    public function edit(Document $document)
    {
        // Vérifier si le document appartient à l'utilisateur authentifié
        if ($document->user_id !== Auth::id()) {
            return redirect()->route('documents.index')->with('error', 'You do not have permission to edit this document.');
        }

        return view('user.edit', compact('document'));
    }

    // Mettre à jour un document spécifique de l'utilisateur
    public function update(Request $request, Document $document)
    {
        // Vérifier si le document appartient à l'utilisateur authentifié
        if ($document->user_id !== Auth::id()) {
            return redirect()->route('documents.index')->with('error', 'You do not have permission to update this document.');
        }

        $request->validate([
            'document_name' => 'required|string|max:255',
            'document_repository' => 'required|string|max:255',
            'date' => 'required|date',
        ]);

        $document->update([
            'name' => $request->document_name,
            'repository' => $request->document_repository,
            'date' => $request->date,
        ]);

        return redirect()->route('documents.index')->with('success', 'Document updated successfully.');
    }

    // Supprimer un document spécifique de l'utilisateur
    public function destroy(Document $document)
    {
        // Vérifier si le document appartient à l'utilisateur authentifié
        if ($document->user_id !== Auth::id()) {
            return redirect()->route('documents.index')->with('error', 'You do not have permission to delete this document.');
        }

        $document->delete();

        return redirect()->route('documents.index')->with('success', 'Document deleted successfully.');
    }
}
