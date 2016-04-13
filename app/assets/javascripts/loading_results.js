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

	$('.ui.green.basic.inverted.button').click(function(){
	  location.reload();
	});

	$('.close.icon').click(function(){
	  location.reload();
	});

 	// alert('ajax finished');
});

