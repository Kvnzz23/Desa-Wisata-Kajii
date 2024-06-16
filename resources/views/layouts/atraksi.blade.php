@foreach($data_atraksi as $data)
<div class="items">
    <div class="card text-white bg-dark">
        <img src="{{asset('uploads/' . $data -> image)}}" class="card-img-top" alt="...">
        <div class="card-body text-center">
            <h5 class="card-title">{{$data->name}}</h5>
        </div>
    </div>
</div>
@endforeach