<?php // PHP Script to connect the bdd
    $username = "root"; // Username to login
    $password = "root"; // Password to login
    $database = 'contact'; // Database's Name
    $servername = 'localhost:3306'; // Localhost and his default port
    $mysqlli = new mysqli($servername,$username,$password,$database);

    
    if ($mysqlli->connect_error) {
        die('Connect Error (' .
        $mysqlli->connect_errno . ') '.
        $mysqlli->connect_error);
    }
    $result = $mysqlli->query("SELECT * FROM profil");
    $mysqlli->close();
 ?>

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
    <link href="assets/img/favicon_admin.png" rel="icon">
    <title>Admin's Page - Mathias REBECCA</title>
</head>
 
<body class="bg-dark">

  <!-- ======= Header/Navbar ======= -->
  <header>
    <nav class="navbar navbar-expand-lg shadow-lg mb-4 bg-light fixed-top">
        <div class="container-fluid">
            <a class="nav-link text-danger fw-bold fs-4" style="margin-right: 10px; margin-left: 10px" href="/Portfolio_PHP/#Accueil">Accueil</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link text-dark fs-5" style="margin-right: 10px; margin-left: 10px" href="/Portfolio_PHP/#About">A propos</a>
                    <a class="nav-link text-dark fs-5" style="margin-right: 10px; margin-left: 10px" href="/Portfolio_PHP/#Formations">Formations</a>
                    <a class="nav-link text-dark fs-5" style="margin-right: 10px; margin-left: 10px" href="/Portfolio_PHP/#Contact">Contact</a>
                    <a class="nav-link text-dark fs-5" style="margin-right: 10px; margin-left: 10px" href="/Portfolio_PHP/#CV">CV</a>
                    <div class="col-auto my-1 top-0 end-0"> <!-- AlertLogin is a function called in the Admin's page -->
                        <a href="/Portfolio_PHP/#Accueil"><button type="button" onclick="AlertLogin()" class="btn btn-outline-secondary fw-bold"> > Deconnexion </button></a>
                    </div>  
                </div>
            </div>
        </div>
    </nav>
  </header>
  <!-- End Header/Navbar -->






    <h1 id="h1_adminpage"class= "display-1 fw-bold text-center pb-3"style="margin-bottom: 50rem; padding-top: 5rem;">Admin's Page</h1>

    <section class="Contact">
        <div class="contact container">
            <h2 class="display-3">Contacts</h2>

            <div class="div_title">
                <div class="section-title">
                    <h2 class="fs-5 fw-bold">Les Profils</h2>
                </div>
                <div class="col-auto my-1"> <!-- AlertLogin is a function called in the Admin's page -->
                    <button type="button" onclick="TRUNC_profil()" class="btn btn-outline-secondary fw-bold"> Vider la table </button>
                </div>
            </div>

            <!-- TABLE CONSTRUCTION -->
            <table class="table table-hover table-dark">
                <thead class="thead-dark">
                    <tr>                    
                        <th scope="col"> # ID</th>          <!-- ID (Auto incremented and Primary Key) -->
                        <th scope="col"> Prenom </th>       <!-- First name -->
                        <th scope="col"> Nom </th>          <!-- Last name -->
                        <th scope="col"> Email </th>        <!-- Email -->
                        <th scope="col"> Telephone </th>    <!-- Tel -->
                        <th scope="col"> Message </th>      <!-- Message -->
                    </tr>
                </thead>
                <tbody>

                <tr> <?php while($rows=$result->fetch_assoc())  { ?>   <!-- Loop till all the rows are loaded (like a foreach) -->
                    <!-- FETCHING DATA FROM EACH ROW OF EVERY COLUMN -->
                    <th scope="row"><?php echo $rows['profil_id'];?></th> <!-- ID (Auto incremented and Primary Key) -->
                    <td><?php echo $rows['fname'];?></td>       <!-- First name -->
                    <td><?php echo $rows['lname'];?></td>       <!-- Last name -->
                    <td><?php echo $rows['email'];?></td>       <!-- Email -->
                    <td><?php echo $rows['tel'];?></td>         <!-- Tel -->
                    <td><?php echo $rows['message'];?></td>     <!-- Message -->
                </tr> <?php } ?>
            </table>
        </div>

    </section>

</body>
    <script> 
        function TRUNC_profil() {
            <?php  
            $mysqlli = new mysqli($servername,$username,$password,$database);  
            ?>
            let confirm = prompt("Etes-vous sur de vouloir vider la table profil ? :");
            if (confirm == "Yes"||confirm == "Y"||confirm == "y"||confirm == "yes"||confirm == "Oui"||confirm == "O"||confirm == "oui"||confirm == "o") {
                let confirmsec = prompt("Confirmez une nouvelle fois :");
                if (confirmsec == "Yes"||confirm == "Y"||confirm == "y"||confirm == "yes"||confirm == "Oui"||confirm == "O"||confirm == "oui"||confirm == "o") {
                    <?php
                        $mysqlli->query("TRUNCATE profil;"); // Clear the profil table
                        $mysqlli->close();
                    ?>
                }
                else {
                    alert("Opération annulée")
                }
            }
            else {
                alert("Opération annulée")
            }
            }
    </script>
</html>
