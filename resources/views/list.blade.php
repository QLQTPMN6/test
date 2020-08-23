<table class="table table-bordered">
<thead>
    <tr>
        <th>Store Id</th>
        <th>Store Name</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
</thead>
<tbody>
    @foreach ($data as $items)
        @php
            $index = 0;
        @endphp

        @foreach ($items['productList'] as $item)
            @php
                $str = null;
                $rows = count($items['productList']);
            @endphp
            <tr>
                @if ($rows > 0)
                    @if ($loop->first)
                        <td class="align-middle" rowspan="{{$rows}}">{{$items['store_id']}}</td>
                        <td class="align-middle" rowspan="{{$rows}}">{{$items['store_name']}}</td>
                    @endif
                @else
                    <td>{{$items['store_id']}}</td>
                    <td>{{$items['store_name']}}</td>
                @endif
                
                <td>{{$item->name}}</td>
                <td>{{$item->quantity}}</td>
                <td>{{$item->price}}</td>
           </tr>
        @endforeach
    @endforeach
</tbody>
</table>