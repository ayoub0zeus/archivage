<?php


use App\Http\Controllers\CustomVoyagerUserController ;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome')->name('welcom');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    // Route::put('/users/{id}', [CustomVoyagerUserController  ::class, 'update'])->name('voyager.users.update');
});



Route::get('/division/dashboard',function(){
    return view('voyager::division\dashboard');
});


//Route pour chef de service
// Route::group(['middleware' => ['web', 'chef_service']], function () {
//     Route::get('/service', function () {
//         return view('service.index');
//     })->name('service.index');

// });






Route::middleware('auth')->group(function () {
    Route::get('/documents', [UserController::class, 'index'])->name('documents.index');
    Route::get('/documents/create', [UserController::class, 'create'])->name('documents.create');
    Route::post('/documents', [UserController::class, 'store'])->name('documents.store');
    Route::get('/documents/{document}', [UserController::class, 'show'])->name('documents.show');
    Route::get('/documents/{document}/edit', [UserController::class, 'edit'])->name('documents.edit');
    Route::put('/documents/{document}', [UserController::class, 'update'])->name('documents.update');
    Route::delete('/documents/{document}', [UserController::class, 'destroy'])->name('documents.destroy');
});




































// Route::group(['middleware' => 'auth:user'], function () {
//     Route::get('/dashboard', 'UserController@dashboard')->name('user.dashboard');
// });

// Route::get('/admin/dashboard' ,[AdminDashboardController::class ,'index'])->name('admin.dashboard');

// Route::middleware(['web', 'role:admin'])->group(function () {
//     Route::redirect('/laratrust', '/laratrust/roles-assignment');
//     Route::get('/laratrust/roles-assignment', [RolesAssignmentController::class, 'index'])->name('laratrust.roles-assignment.index');
//     Route::get('/laratrust/roles', [RolesController::class, 'index'])->name('laratrust.roles.index');
//     Route::get('/allTodos', [TodoController::class, 'getAllTodos'])->name('todos.all');
// });

// Route::group(['prefix' => 'user'], function () {
//     Voyager::routes();
// });
