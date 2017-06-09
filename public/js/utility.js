$(document).ready(function(){
    
});

var response_;

function login_fb() {
     FB.getLoginStatus(function(response) {
          // if (response.status === 'connected') {
          //   console.log('connected');       
          //   get_info();
          //   var uid = response.authResponse.userID;
          //   var accessToken = response.authResponse.accessToken;
          // } else if (response.status === 'not_authorized') {
          //   console.log('not_authorized');
          //   get_info();
          // } else {
          //   console.log('not login');
          //   get_info(response.status);
          // }
          get_info(response.status);
        });
// get_info();
}

function get_info($status){
    
    FB.login(function(response) {
        if (response.authResponse) {

            FB.api('/me', {fields: 'id,name,cover,picture,link,email,updated_time'}, function(resInfo) {
                // console.log(response);
                $('#login_fb').html('Hi: <b style="font-size: 15px;">'+resInfo.name+'</b>');
                // ajax_set_ss(response);
                // console.log(resInfo);
                // console.log(response);
                ajax_set_ss(resInfo,$status);
            });

            
        } else {
            console.log('User cancelled login or did not fully authorize.');
        }
    },{scope: 'email'});
   
}

function ajax_set_ss(response,$status){
   
    $.ajax({
        url: url_home+'/utility',
        tyoe: 'POST',
        data: { 
            'page': response,
            'status': $status
           
            
        },
        crossDomain: true,
       
        type: "POST",
        success: function(data) {
           console.log(data);
                    
        },
        error: function(xhr) {
            console.log(xhr);
         
        }
    });

}