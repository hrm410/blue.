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

	$('.new-show').click(function() {
		$('.post_form').fadeIn();
	});

// 	let searchWrapper = document.querySelector('.search-wrapper'),
//     searchInput = document.querySelector('.search-input');

// 	document.addEventListener('click', (e) => {
// 	  if (~e.target.className.indexOf('search')) {
// 	    searchWrapper.classList.add('focused');
// 	    searchInput.focus();
// 	  } else {
// 	    searchWrapper.classList.remove('focused');
// 	  }
// })
});
