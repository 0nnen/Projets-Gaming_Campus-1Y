//fichier script.js vous permettant de faire vos tests JS
$(document).ready(function(){

    // =============  Bouton BestPlayer =============

    //Add active to the class and change the CSS
    $(".row").on('click',function(){
        $("#myImg").attr('src','img/favicon.png');

    });
})

//Dropdown menu
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems, options);
  });

  // Or with jQuery

  $('.dropdown-trigger').dropdown();