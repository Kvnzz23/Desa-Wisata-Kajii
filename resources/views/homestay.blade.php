<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homestay</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    @include('layouts.navbar')

    <div class="content-below-fixed3">

        <div class="title text-white text-center">
            <h1>Homestay</h1>
        </div>
        <div class="fixed-center">
            <div class="content-homestay">
                @foreach ($data_homestay as $data)
                <div class="items">
                    <div class="card text-black bg-light">
                        <div class="img-homestay">
                            <img src="{{asset('uploads/' . $data -> image)}}" class="card-img-top" alt="...">
                        </div>
                        <div class="reservasi d-flex justify-content-center align-items-center">
                            <a href="{{$data -> link}}" target="_blank" class="btn btn-success d-flex flex-row justify-content-center align-items-center fw-bold text-center" style="border-radius: 18px; font-size: 11px;">
                                <img src="image/wa.png" alt="">
                                RESERVASI
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-center">{{$data -> name}} <span>{{$data -> harga}}</span></h5>
                            <p>
                            <div class="fasilitas">
                                <h4>Fasilitas :</h4>
                                {{$data -> fasilitas1}} <br />
                                {{$data -> fasilitas2}} <br />
                                {{$data -> fasilitas3}} <br />
                                {{$data -> fasilitas4}} <br />
                                {{$data -> fasilitas5}} <br />
                                {{$data -> fasilitas6}}
                            </div>
                            </p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <footer>
        @include('layouts.footer')
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>

</html>