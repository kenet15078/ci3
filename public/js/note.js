$(document).ready(function() {
var $pageLoad = 1;
var $current_page_note=0;
var $acceptLoad = true;
var $fixheight =0;



	$('#set_note').on('click',function(){
		var $getUrl  = $('#get_url').val(); //url to extract from text field
		var delay=3000; //2 second
		if($getUrl !== ''){
			$.ajax({
			    url: url_home+'/note/set_note',
			    data: { 
			        'note': $getUrl, 
			        "flag": 1
			    },
			    crossDomain: true,
			    // cache: false,
			    type: "POST",
			    success: function(data) {
			    	// console.log(data);
			    	$('#get_url').val(''); 

			    	// alert('Success');
			    	$('.alert-success').fadeIn();
			    	setTimeout(function() {
			    		$('.alert-success').fadeOut();
					  //your code to be executed after 1 second
					}, delay);
			    	var html = '<div class="item-content"><div class="main-text">'+data+'</div>'+
			    	extra_text()+'</div>';
			    	$('.content').prepend(html);
			    },
			    error: function(xhr) {
			    	// console.log(xhr);
			    	console.table(data);
			    }
			});
		}else{
			$('.alert-warning').fadeIn();
			    	setTimeout(function() {
		    		$('.alert-warning').fadeOut();
					  //your code to be executed after 1 second
			}, delay);
		}
	});







var $windowHeight = $(window).height();
var $documentHeight = $(document).height();
var $scrollTop = $(window).scrollTop();

	$(window).on('scroll', function() { 



		// console.log($pageLoad);

	
		// console.log($('#load'+$pageLoad));


		$scrollTop = $(window).scrollTop();
		// console.log('==scroll TOP: '+$(window).scrollTop());
		// console.log('==height load: '+ ($documentHeight-$windowHeight)*0.7);
		if($acceptLoad){
			
			if($(window).scrollTop()>($(document).height()-$windowHeight)*0.7){
				console.log('load soom');
				if($pageLoad <= $current_page_note + 1){
					// console.log('run hể');
					$acceptLoad = false;
					ajax_get_note();	
				}
			
			}

			
			if(Math.floor($scrollTop+$windowHeight) == Math.round($documentHeight) 
				|| Math.ceil($scrollTop+$windowHeight) == Math.round($documentHeight)) {
		   		// console.log($pageLoad,$current_page_note);
			   	// console.log('===run to bottom===');
				// console.log($scrollTop,$windowHeight,$documentHeight);
		   		if($pageLoad <= $current_page_note + 1){
		   			// console.log($current_page_note);
				 		// console.log($pageLoad);
						//load ajax
						
						$acceptLoad = false;
						ajax_get_note();
		   		}
			}
			
		}
		// 	if($pageLoad > 0){
		// 		console.log($('#load2').offset().top);
		// }

		// console.log($current_page_note);
	});


	if($scrollTop == 0 && $windowHeight == $documentHeight){
		// console.log($pageLoad);
		ajax_get_note();
	}



function ajax_get_note(){
	$.ajax({
	    url: url_home+'/note/get_note',
	    data: { 
	        'page': $pageLoad
	        
	    },
	    crossDomain: true,
	    // cache: false,
	    type: "POST",
	    success: function(data) {
	    	$pageLoad = $pageLoad + 1;
	    	var raw_data= JSON.parse(data);
	    	var raw_data_note = raw_data['data'];
	    	$current_page_note = raw_data['current_page'];
	    	for (x in raw_data_note) {
					var html = '<div class="item-content" id="note'+raw_data_note[x].id+'"><div class="main-text">'+raw_data_note[x].note+'</div>'+	extra_text(raw_data_note[x].id)+'</div>';
  				$('.content').append(html);
  				$acceptLoad = true;
  				$documentHeight = $(document).height();
  				
				}
					
	    },
	    error: function(xhr) {
	    	// console.log(xhr);
	    	// console.table(data);
	    }
	});

}
function extra_text(id){
	return '<div class="extra-text"><a target="_blank" href="index.php/note/detail/'+id+'">View</a></div>';
}
});






// var a= $(window).scrollTop();
// var aa= $(window).height();
// 	// var aaa= $('.content').height();
// var aaaa= $(document).height();

// 	// console.log(parseInt(a) ,aa,aaaa);
// if(a == 0 && aa == aaaa){
// 	// console.log($pageLoad);
// 	ajax_get_note();
// }

// $(window).scroll(function() {
// 	var a= $(window).scrollTop();
// 	var aa= $(window).height();
// 	// var aaa= $('.content').height();
// 	var aaaa= $(document).height();
// 	// console.log(Math.round(aa+a),a+aa,Math.ceil(a),Math.floor(a) ,Math.round(aa),aaaa);
//    if(Math.floor(aa+a) == Math.round(aaaa) || Math.ceil(aa+a) == Math.round(aaaa)) {
//    		// console.log($pageLoad,$current_page_note);
//    		if($pageLoad <= $current_page_note + 1){
//    			// console.log($current_page_note);
// 		 		// console.log($pageLoad);
// 				//load ajax
// 				ajax_get_note();
//    		}
// 	}
// });
