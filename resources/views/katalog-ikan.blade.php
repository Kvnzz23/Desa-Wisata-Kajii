<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Katalog Ikan</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    @include('layouts.navbar')
    <div class="content-below-fixed2">
        <div class="title text-center text-white">
            <h1>Katalog Ikan</h1>
        </div>
        <div class="content-ikan">
            <div class="wrapper">
                @foreach ($data_ikan as $data)
                <div class="image">
                    <img src="{{asset('uploads/' . $data -> image)}}" alt="">
                    <div class="content">
                        <h1>{{$data -> name}}</h1>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <div class="selengkapnya">
            <a href="https://drive.google.com/drive/folders/1dxpukjX-CzAPSJxk4INt5Tr2h90-Qj5z" target="_blank">
                <button type="button" class="btn btn-warning text-white fw-bold">Selengkapnya</button>
            </a>
        </div>        
    </div>
    <footer>
        @include('layouts.footer')
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>

</html>