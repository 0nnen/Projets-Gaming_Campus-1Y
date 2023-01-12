<?php require "cfg/config.php"; ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title></title>
</head>
<body>
  <h1>panel admin</h1>
  <h2>Gestion user</h2>
  <?php
  $sql = "SELECT * FROM user";
  $pre = $pdo->prepare($sql);
  $pre->execute();
  $userList = $pre->fetchAll(PDO::FETCH_ASSOC);
  /*
  TODO afficher la liste d'utilisateur
  Réponse à donner : seulement la commande PHP .
  Ne pas écrire les accolades sur GForm. Les Parenthèses oui.
  */
  foreach ($userList as $user) {

}
  ?>
    <div class="bloc_user">
      <h2><?php echo $user['username']; ?></h2>
    </div>
</body>
</html>
