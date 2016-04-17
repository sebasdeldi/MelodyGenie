$( document ).ajaxStart(function() {
	$('.ui.text.container.main h1').transition('scale');
	$('.ui.text.container.main .prompt').transition('scale');
	$('.ui.text.container.main h2').transition('scale');
	$('.ui.text.container.main i').transition('scale');

  $('.ui.inline.loader').addClass('active');
  $('.loader-msg').prepend('<br>')
  $('.loader-msg').append('<p><span>Our</span> <span class="my_blue"><b>Melody Genie</b></span> <span>is looking for the best artists for you!</span></p>');
  // alert('ajax started');
});

$( document ).ajaxComplete(function() {
	$('.ui.inline.loader').removeClass('active');
	$('.loader-msg').css('display', 'none');
	


 	// alert('ajax finished');
});

