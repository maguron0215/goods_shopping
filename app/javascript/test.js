 $(function() {

    $('.btn').on('click',function(){
      $('.modal').addClass('is-active');
    });

     $('.closing').on('click',function(){
      $('.modal').removeClass('is-active');
    });

});
