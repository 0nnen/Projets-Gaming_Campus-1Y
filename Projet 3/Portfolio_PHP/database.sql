
DROP DATABASE contact; --Delete contact database
TRUNCATE profil; --Clear everything inside the profil table


CREATE DATABASE IF NOT EXISTS contact;
CREATE TABLE IF NOT EXISTS profil(
    profil_id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR (99),
    lname VARCHAR (99),
    email VARCHAR (99),
    tel INT (10),
    message TEXT);


-- INSERT INTO profil (fname, lname, email, tel, message) VALUES ('$_POST[fname]', '$_POST[lname]', '$_POST[email]', '$_POST[tel]', '$_POST[message]')");



$pdo = new PDO('mysql:host=localhost;dbname=contact', 'root', 'root', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
$pdo->exec("INSERT INTO profil (fname, lname, email, tel, message) VALUES ('$_POST[fname]', '$_POST[lname]', '$_POST[email]', '$_POST[tel]', '$_POST[message]')");
