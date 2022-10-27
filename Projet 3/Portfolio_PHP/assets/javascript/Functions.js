function AlertLogin() {
  let pseudo = prompt("Entrez l'identifiant admin :");
  if (pseudo == "root") {
    let password = prompt("Entrez le mot de passe admin :");
    if(password == "root"){
      window.open("index_admin.php", "_blank");
    }
     else {
     alert("Mot de passe Incorrect")
     }
  }
   else {
     alert("Identifiant Incorrect")
   }
}



function AlertDBCreated() {
  alert("Base de Donnée créee !");
}      
function AlertDBnotCreated() {
  alert("Base de Donnée non créee !");
}
function FieldsError() {
  alert("Erreur: Tous les champs doivent être remplis !");
}   


