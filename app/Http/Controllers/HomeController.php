<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\User;
use App\Models\Store;
use App\Models\Product;



class HomeController extends Controller
{
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //DB::enableQueryLog();
        $data = array();
        $storeList = User::find(Auth::user()->id)->store()->get();
        $allStoreList = Store::all();
        $allProductList = Product::all();
        foreach ($storeList as $store) {
            $storeId = $store->id;
            array_push($data, [
                "store_id"      => $storeId,
                "store_name"    => $store->name,
                "productList"   => Store::find($storeId)->product()->get()
            ]);
        }
        //dd(DB::getQueryLog());
        return view('home', [
            'data' => $data,
            'storeList' => $allStoreList,
            'productList' => $allProductList,
            'storeIds' => implode(',',($storeList->pluck('id'))->all())
        ]);
    }
}
