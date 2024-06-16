<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paket Wisata</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="navbar">
        @include("layouts.navbar")
    </div>
    <div class="content-below-fixed1">
        <div class="container-paket">
            <h1 class="text-center text-white">Paket Wisata</h1>
            <div class="content-left-fixed">
                <div class="container1">
                    @foreach($data_paket as $data)
                    <div class="items">
                        <div class="card text-black bg-white">
                            <img src="{{asset('uploads/' . $data -> image)}}" class="card-img-top p-2" alt="...">
                            <div class="card-body">
                                <h5 class="card-title text-center">
                                    <div class="btn text-white fw-bold" style="border-radius: 20px; background-color:#fca01a;">{{$data->name}} <br> {{$data->type}}
                                    </div>
                                </h5>
                                <p>
                                <div class="content-left">
                                    <div class="card-text">
                                        <div class="harga fw-bold text-center">
                                            Harga : {{$data -> harga}}
                                        </div>
                                    </div>
                                </div>
                                </p>
                                <p>
                                <div class="fasilitas">
                                    {{$data -> fasilitas1}} <br />
                                    {{$data -> fasilitas2}} <br />
                                    {{$data -> fasilitas3}} <br />
                                    {{$data -> fasilitas4}} <br />
                                    {{$data -> fasilitas5}} <br />
                                    {{$data -> fasilitas6}} <br />
                                    {{$data -> fasilitas7}} <br />
                                    {{$data -> fasilitas8}} <br />
                                    {{$data -> fasilitas9}} <br />
                                    {{$data -> fasilitas10}} <br />
                                </div>
                                </p>
                                <p>
                                <div class="reservasi d-flex justify-content-center align-items-center">
                                    <a href="{{$data -> link}}" target="_blank" class="btn btn-success d-flex flex-row justify-content-center align-items-center fw-bold text-center" style="border-radius: 18px;">
                                        <img src="image/wa.png" alt="">
                                        RESERVASI
                                    </a>
                                </div>
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
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