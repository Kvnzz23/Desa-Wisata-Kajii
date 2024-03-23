<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Desa Wisata Kajii</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    @include("layouts.navbar")
    <div class="hero" id="Home">
        @include("layouts.content")
    </div>
    <div id="tentang">
        @include("layouts.tetang-kajii")
    </div>
    <div class="atraksi">
        <div class="judul text-center">
            <h1 class="fw-bold text-white"><span>Atraksi / </span>Potensi</h1>
        </div>
        <div class="content d-flex flex-sm-row">
            @foreach($data_atraksi as $data)
            <div class="card d-flex flex-column">
                <div class="card" style="width: 18rem;">
                    <img src="" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>