<?php
require_once "../cfg/config.php";

$sql = "SELECT * FROM user WHERE username=:username AND password=SHA1(:password)";
$dataBinded=array(
  ':username'   => $_POST['username'],
  ':password'=> "iuyg65(è'er'35#1u§(rf§7E#547f!i(§f58)))".$_POST['password']
);
$pre = $pdo->prepare($sql);
$pre->execute($dataBinded);
$user = $pre->fetch(PDO::FETCH_ASSOC);
if(empty($user)){ //vérifie si le resultat est vide !
  //non connecté
  echo "Utilisateur ou mot de passe incorrect !";
  header('Location: ../index.php');
  exit();
}else{
  header('Location: ../admin.php');
  exit();
}
?>
