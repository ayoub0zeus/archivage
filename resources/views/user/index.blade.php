{{-- @extends('layouts.app')

@section('content') --}}
    <h1>My Documents</h1>
    @if ($documents->count() > 0)
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Repository</th>
                    <th>File Path</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($documents as $document)
                    <tr>
                        <td>{{ $document->name }}</td>
                        <td>{{ $document->repository }}</td>
                        <td>{{ $document->file_path }}</td>
                        <td>{{ $document->date }}</td>
                        <td>
                            <a href="{{ route('documents.show', $document) }}">View</a>
                            <a href="{{ route('documents.edit', $document) }}">Edit</a>
                            <form action="{{ route('documents.destroy', $document) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @else
        <p>No documents found.</p>
    @endif
    <a href="{{ route('documents.create') }}">Add New Document</a>
{{-- @endsection --}}
