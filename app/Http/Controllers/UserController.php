<?php

namespace App\Http\Controllers;

use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class UserController extends Controller
{
   
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255']
        ]);
    }

    public function update(Request $request)
    {
        $this->validator($request->all())->validate();
        $user = Auth::user();
        $user->name = $request->name;
        $user->save();
        return response()->json([
            'success'    => true,
            'username'   => $user->name
        ], 200);
    }
}
