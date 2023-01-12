<?php require_once "cfg/config.php"; ?>
<!DOCTYPE utfhtml>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php /*
    TODO afficher ce bouton "panel admin" seulement pour les admin
    Réponse à donner : seulement la commande PHP avec sa condition.
    Ne pas écrire les accolades sur GForm. Les Parenthèses oui.
    */
    ?>
    <a href="admin.php">Panel admin</a>

    <h1>Hola mundo</h1>
    <h2>Inscris-toi</h2>
    <form action="action/signup.php" method="post">
      <input type="text" name="username" placeholder="Username">
      <input type="password" name="password" placeholder="Password">
      <input type="submit">
    </form>
    <h2>Connecte-toi</h2>
    <form action="action/login.php" method="post">
      <input type="text" name="username" placeholder="Username">
      <input type="password" name="password" placeholder="Password">
      <input type="submit">
    </form>
  </body>
</html>
