$( document ).ajaxComplete(function() {

	// $('.card.custom').click(function(){
	//   $('.ui.modal').modal('show');

	// });

	$('.card.custom').click(function(event){
		var card_clicked = $(this).attr('data-id');

		$('#modal-' + card_clicked).modal('show');
	});
	

	$('.modal-icons i')
	  .popup()
	;





		// for (var i = 0; i < 19; i++) {
		// 	if (card_clicked === i) {
		// 		$('#modal-0').modal('show');
		// 	}
		// };

});