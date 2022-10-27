<?php // PHP Script to connect the bdd and the website
    $username = "root"; // Username to login
    $password = "root"; // Password to login
    $database = 'contact'; // Database's Name
    $servername = 'localhost:3306'; // Localhost and his default port
    $mysqli = new mysqli($servername,$username,$password,$database);
    if ($mysqli->connect_error) {
        die('Connect Error (' .
        $mysqli->connect_errno . ') '.
        $mysqli->connect_error);
    }
    $sql = " SELECT * FROM profil";
    $result = $mysqli->query($sql);
    $mysqli->close();
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
    <link href="assets/img/favicon.png" rel="icon">
    <title>Admin's Page</title>
</head>
 
<body class="bg-dark">
    <h1 class= "display-1 fw-bold text-center">Admin's Page</h1>

    <section class="Contact">
        <div class="contact container">
            <h2 class="display-3">Contacts</h2>
            <div class="section-title">
                <h2 class="fs-5 fw-bold">Les Profils</h2>
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
                    <th scope="row"><?php echo $rows['id'];?></th> <!-- ID (Auto incremented and Primary Key) -->
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
 
</html>