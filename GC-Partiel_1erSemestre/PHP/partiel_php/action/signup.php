<?php
require_once "../cfg/config.php";

$sql = "INSERT INTO user(username,password) VALUES(:username,SHA1(:password))";
$dataBinded=array(
    ':username'   => $_POST['username'],
    ':password'=> "iuyg65(è'er'35#1u§(rf§7E#547f!i(§f58)))".$_POST['password']
);
$pre = $pdo->prepare($sql);
$pre->execute($dataBinded);

header('Location: ../index.php');
?>
