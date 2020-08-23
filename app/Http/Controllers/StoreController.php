<?php

namespace App\Http\Controllers;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Models\Store;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\Store_Product;
use App\Models\User_Store;

class StoreController extends Controller
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function store(Request $request){

    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add(Request $request)
    {
        DB::beginTransaction();
        try {
            $user = Auth::user();
            $store_id = $request->store_id;
            User_Store::where('store_id', '=', $store_id)
            ->where('user_id', $user->id)
            ->where('store_id', $store_id)
            ->delete();

            $user_store = User_Store::create([
                'user_id'       => $user->id,
                'store_id'      => $store_id
            ]);
            $data = $request->data;

            Store_Product::where('store_id', '=', $store_id)->delete();
            if(!empty($data)) {
                foreach ($data as $value) {
                    $store_product = Store_Product::create([
                        'store_id'      => $store_id,
                        'product_id'    => $value['product_id']
                    ]);
                }
            }
            DB::commit();
            return response()->json([
                'success'    => true,
                'template'  => $this->storeListTemplate()
            ], 200);
        } catch (Exception $e) {
            DB::rollBack();
        }
    }

    function storeListTemplate() {
        $data = array();
        $storeList = User::find(Auth::user()->id)->store()->get();
        foreach ($storeList as $store) {
            $storeId = $store->id;
            array_push($data, [
                "store_id"      => $storeId,
                "store_name"    => $store->name,
                "productList"   => Store::find($storeId)->product()->get()
            ]);
        }

        $html = view('list', [
            'data' => $data
        ])->render();
        return $html;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'address' => ['required', 'string', 'max:255'],
            'phone' => ['required', 'string', 'phone'],
        ]);
    }

    public function getProductInStore(Request $request, $id)
    {
        $storeList = User::find(Auth::user()->id)->store()->get();
        DB::enableQueryLog();
        $productList = Store::find($request->id)->product()->get();
        //dd(DB::getQueryLog());
        $html = view('store/list', [
            'productList' => $productList
        ])->render();
        return response()->json([
            'success'    => true,
            'template'   => $html
        ], 200);
    }
}
