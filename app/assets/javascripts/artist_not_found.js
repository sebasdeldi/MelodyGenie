$( document ).ajaxComplete(function() {

	$('.ui.green.basic.inverted.button.artist_not_found').click(function(){
	  location.reload();
	});

	$('.close.icon.artist_not_found').click(function(){
	  location.reload();
	});

 	// alert('ajax finished');
});