$(document).ready(function(){
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '1358248540902048',
        xfbml      : true,
        version    : 'v2.8'
      });
      // FB.getLoginStatus(function(response) {
      //   if (response.authResponse) {
      //       FB.api('/me', {fields: 'id,name,cover,picture,email'}, function(response) {
      //           $('#login_fb').html('Hi: '+response.name);
      //           //call ajax login again
      //       });
      //   }
      // });
    };


    (function(d, s, id){
       var js, fjs = d.getElementsByTagName(s)[0];
       if (d.getElementById(id)) {return;}
       js = d.createElement(s); js.id = id;
       js.src = "//connect.facebook.net/en_US/sdk.js";
       fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
   
});

