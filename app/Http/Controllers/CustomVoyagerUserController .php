<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerUserController as BaseVoyagerUserController;
use Illuminate\Support\Facades\Auth;

class CustomVoyagerUserController  extends BaseVoyagerUserController
{
    public function update(Request $request, $id)
    {
        if (Auth::user()->getKey() == $id) {
            $request->merge([
                'role_id'                              => Auth::user()->role_id,
                'user_belongstomany_role_relationship' => Auth::user()->roles->pluck('id')->toArray(),
                'id_division'                          => Auth::user()->id_division,
                'user_belongsto_division_relationship' => Auth::user()->divisions->pluck('id')->toArray(),
                'id_service'                          => Auth::user()->id_service,
                'user_belongsto_service_relationship' => Auth::user()->services->pluck('id')->toArray(),
            ]);
        }

        // Call the parent update method
        return parent::update($request, $id);
    }
}
