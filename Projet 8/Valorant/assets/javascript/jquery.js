$(document).ready(function(){

    // =============  Bouton BestPlayer =============

    //Add active to the class and change the CSS
    $("#toggle_all").on('click',function(){
        $(".content_toggle_all").toggleClass('active');


        //Add animation when shown
        $("tr:not(:first-child)").each(function (index ) {
            $(this).css('animation-delay',index *0.150 +'s');
         });
    });




// =============  Bouton BestPlayer =============

        //Add active to the class and change the CSS
    $("#toggle_bestplayer").on('click',function(){
        $(".content_toggle_bestplayer").toggleClass('active');

        //Add animation when shown
        $("tr:not(:first-child)").each(function (index ) {
            $(this).css('animation-delay',index *0.150 +'s');
         });  

    });



// =============  Bouton BestPlayer =============

        //Add active to the class and change the CSS
        $("#toggle_globalmatch").on('click',function(){
            $(".content_toggle_globalmatch").toggleClass('active');
    
            //Add animation when shown
            $("tr:not(:first-child)").each(function (index ) {
                $(this).css('animation-delay',index *0.150 +'s');
             });  
    
        });
    
});
