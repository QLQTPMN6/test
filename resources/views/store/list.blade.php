@php
    $prId="";
@endphp
@foreach ($productList as $item)
@php
    $prId.=$item->id.",";
@endphp
<tr id="product_{{$item->id}}" data-id="{{$item->id}}">
    <td></td>
    <td>{{$item->name}}</td>
    <td>{{$item->quantity}}</td>
    <td>{{$item->price}}</td>
    <td><button type="button" class="btn btn-info" onclick="removeProduct('{{$item->id}}')">Remove</button></td>
</tr>
@endforeach