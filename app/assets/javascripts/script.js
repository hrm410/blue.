$(document).on('turbolinks:load', function() {
	$('.title_hover').hover(
		function() {
		 $(this).animate({'font-size':'30px'}, 300)
		},
		function() {
		 $(this).animate({'font-size':'24px'}, 300)
		}
	);

	$('.user-container').hover(
		function() {
		 $(this).animate({'font-size':'30px'}, 300)
		},
		function() {
		 $(this).animate({'font-size':'24px'}, 300)
		}
	);

});
