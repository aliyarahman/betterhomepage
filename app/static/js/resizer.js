$('window').ready(function() {


        $('.jumbotron').each(function() {
            var obj = $(this);
            var imgHeight = $('img',obj).height();
            $(this).height(imgHeight);
        });

        $( window ).resize(function() {
          $('.jumbotron').each(function() {
            var obj = $(this);
            var imgHeight = $('img',obj).height();
            $(this).height(imgHeight);
        });
        });

});