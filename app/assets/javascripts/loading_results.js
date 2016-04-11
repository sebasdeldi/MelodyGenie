$( document ).ajaxStart(function() {
	$('.ui.text.container.main h1').transition('scale');
	$('.ui.text.container.main .prompt').transition('scale');
	$('.ui.text.container.main h2').transition('scale');
	$('.ui.text.container.main i').transition('scale');

  $('.ui.inline.loader').addClass('active');
  // alert('ajax started');
});

$( document ).ajaxComplete(function() {
	$('.ui.inline.loader').removeClass('active');
 	// alert('ajax finished');
});
