@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th scope="col">Name</th>
                          <th scope="col">Email</th>
                          <th scope="col">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="username" data-username="{{ Auth::user()->name }}">
                            {{ Auth::user()->name }}
                        </td>
                          <td>{{ Auth::user()->email }}</td>
                          <td></td>
                        </tr>
                      </tbody>
                    </table>
                    @include('auth.edit_user')
                    <br/>
                    <div class="alert alert-success d-none" id="mess_success">
                      <strong>Success!</strong>
                    </div>
                    <label for="stores">Store</label>
                    <select name="stores" id="stores" data-url="{{url('store/getProduct')}}" data-stores="{{$storeIds}}">
                        <option value="">Please select store</option>
                        @foreach ($storeList as $store)
                            <option value="{{ $store->id }}"
                            >{{ $store->name }}</option>
                        @endforeach
                    </select>
                    <br/>
                    
                    <div id="productList" class="d-none">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                        <select name="productLists" id="productLists">
                                            @foreach ($productList as $product)
                                                <option data-product="{{$product}}" value="{{ $product->id }}"
                                                >{{ $product->name }}</option>
                                            @endforeach
                                        </select>
                                        <button type="button" class="btn btn-info add-product" onclick="addProduct()">Add Product</button>
                                    </th>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody id="prList">
                               
                            </tbody>
                            <tr>
                                <th colspan="5"><button type="button" class="btn btn-info save text-right" onclick="save('{{ route('addStore') }}')">Save</button></th>
                            </tr>
                        </table>
                    </div>
                    
                    <br/>
                    <div id="tblStoreList">@include('list')</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection