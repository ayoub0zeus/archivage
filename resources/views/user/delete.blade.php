{{-- @extends('layouts.app')

@section('content') --}}
    <h1>Delete Document</h1>
    <p>Are you sure you want to delete the document "{{ $document->name }}"?</p>
    <form action="{{ route('documents.destroy', $document) }}" method="POST">
        @csrf
        @method('DELETE')
        <button type="submit">Delete</button>
    </form>
    <a href="{{ route('documents.index') }}">Cancel</a>
{{-- @endsection --}}
