{{-- @extends('layouts.app')

@section('content') --}}
    <h1>Create New Document</h1>
    <form action="{{ route('documents.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div>
            <label for="document_name">Document Name:</label>
            <input type="text" id="document_name" name="document_name" required>
        </div>
        <div>
            <label for="document_repository">Document Repository:</label>
            <input type="text" id="document_repository" name="document_repository" required>
        </div>
        <div>
            <label for="file">Upload Document:</label>
            <input type="file" id="file" name="file" required>
        </div>
        <div>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
        </div>
        <button type="submit">Upload Document</button>
    </form>
{{-- @endsection --}}
