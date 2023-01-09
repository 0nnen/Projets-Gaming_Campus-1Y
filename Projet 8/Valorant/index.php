

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Links to CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="assets/css/style.css" rel="stylesheet">


    <!-- Google Fonts and Bootstrap Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

    <!-- Icon and Title -->
    <link href="assets/img/favicon.png" rel="icon">
    <title>Admin's Page</title>
</head>

<body class="bg-dark">
    <h1 class= "display-1 fw-bold text-center">Admin's Page</h1>

    <section class="Contact">
        <div class="contact container">
            <h2 class="display-3">Valorant Tab</h2>

            <div>
                <div class="section-title">
                    <button><h3 class="fs-5 fw-bold" id=toggle_all>Tous</h3></button>
                    <button><h3 class="fs-5 fw-bold" id=toggle_bestplayer>Meilleur Joueur</h3></button>
                    <button><h3 class="fs-5 fw-bold" id=toggle_globalmatch>Match 3</h3></button>
                </div>
                <div>
                    <?php 
                    Include_once ('assets/tab_all.php');
                    Include_once ('assets/tab_bestplayer.php');
                    Include_once ('assets/tab_globalmatch3.php');
                        
                    ?>
                    
                </div>




            </div>
        </div>
    </section>




        <!-- Jquery Livrary -->
    <script
  src="https://code.jquery.com/jquery-3.6.3.js"
  integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
  crossorigin="anonymous"></script>

    <script src="assets/javascript/jquery.js" ></script>

</body>




</html>