<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <title>Madingku</title>
</head>

<body>
    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Mading 0.1a</a>
            <a class="btn btn-primary" href="/admin" role="button">LOGIN</a>
        </div>
    </nav>

    <!-- CONTENT -->

    <div class="container-fluid p-md-3">
        <div class="row justify-content-between">
            <div class="col-md-6">
                <iframe width="100%" height="300" src="https://www.youtube.com/embed/dQw4w9WgXcQ" frameborder="0" allowfullscreen></iframe>
            </div>
            
            <div class="col list-group col-md-4">
                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                  <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">agenda 1</h5>
                    <small>now</small>
                  </div>
                  <p class="mb-1">judul</p>
                  <small>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe, eligendi.</small>
                </a>

                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                  <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">agenda 2</h5>
                    <small class="text-muted">in 3 days</small>
                  </div>
                  <p class="mb-1">judul</p>
                  <small class="text-muted">Lorem ipsum dolor sit amet.</small>
                </a>

                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                      <h5 class="mb-1">agenda 3</h5>
                      <small class="text-muted">in 4 days</small>
                    </div>
                    <p class="mb-1">judul</p>
                    <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing.</small>
                  </a>
                
            </div>
        </div>
    </div>


    <div class="footer_fixed">
    <!-- Running Text -->
<div class="kotak">


    <div class="footer">
        <div class="jam-body" id="jam">

        </div>
        <marquee class="running-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi quasi aut, quae ut quos iusto earum enim placeat in asperiores reprehenderit fuga sed ab eius exercitationem nihil deserunt fugiat sapiente.</marquee>
    </div>

    <!-- WAKTU SHOLAT -->
    <div class="d-flex text-center">
        <div class="col bg-primary">
            <div class="waktu-sholat">
                <h3>Fajar</h3>
                <p>04:30 AM</p>
            </div>
        </div>
        <div class="col bg-danger">
            <div class="waktu-sholat">
                <h3>Dzhur</h3>
                <p>12:15 PM</p>
            </div>
        </div>
        <div class="col bg-primary">
            <div class="waktu-sholat">
                <h3>Asr</h3>
                <p>03:45 PM</p>
            </div>
        </div>
        <div class="col bg-danger">
            <div class="waktu-sholat">
                <h3>Maghrib</h3>
                <p>06:30 PM</p>
            </div>
        </div>
        <div class="col bg-primary">
            <div class="waktu-sholat">
                <h3>Isha</h3>
                <p>08:15 PM</p>
            </div>
        </div>
    </div>

    <!-- BEGIN SCRIPT -->
    <script>
        // Fungsi untuk menampilkan jam dalam format "hh:mm"
        function tampilkanJam() {
            const waktuSekarang = new Date();
            const jam = waktuSekarang.getHours();
            const menit = waktuSekarang.getMinutes();

            const jamFormatted = `${jam.toString().padStart(2, '0')}:${menit.toString().padStart(2, '0')}`;
            document.getElementById('jam').textContent = jamFormatted;
        }

        // Memanggil fungsi tampilkanJam setiap detik
        setInterval(tampilkanJam, 1000);
    </script>
    <!-- END SCRIPT -->
</body>
</html>
