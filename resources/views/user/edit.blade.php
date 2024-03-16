{{-- @extends('layouts.app')

@section('content') --}}
    <h1>Edit Document</h1>
    <form action="{{ route('documents.update', $document) }}" method="POST">
        @csrf
        @method('PUT')
        <div>
            <label for="document_name">Document Name:</label>
            <input type="text" id="document_name" name="document_name" value="{{ $document->name }}" required>
        </div>
        <div>
            <label for="document_repository">Document Repository:</label>
            <input type="text" id="document_repository" name="document_repository" value="{{ $document->repository }}" required>
        </div>
        <div>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="{{ $document->date }}" required>
        </div>
        <button type="submit">Update Document</button>
    </form>
{{-- @endsection --}}
