// Write your Pizza Builder JavaScript in this file.

$(document).ready(function(){
var price = 10
	$('.btn').on('click', function(){
		$(this).toggleClass('active');
	})

	$(".btn-pepperonni").on('click', function() {
			$('.pep').toggle();
			priceAdjust(event, 1);
			showHide(event, '.js-pepperonni');


	});
	$(".btn-mushrooms").on('click', function(){
		
		$('.mushroom').toggle();
		priceAdjust(event, 1)
		showHide(event, '.js-mushrooms');
	});

	$('.btn-green-peppers').on('click', function(){
		$('.green-pepper').toggle();

		priceAdjust(event, 1)
		showHide(event, '.js-peppers');
	});

	$('.btn-sauce').on('click', function(){
		$('.sauce').toggleClass('sauce-white');
		priceAdjust(event, 3);
		showHide(event, '.js-sauce');

	});

	$('.btn-crust').on('click', function(){
		$('.crust').toggleClass('crust-gluten-free');
		priceAdjust(event, 5);
		showHide(event, '.js-gluten');

	});
	
	function priceAdjust (event, addition) {
		// if ($(this).hasClass('active')) {
			console.log($(event.currentTarget));
			if ($(event.target).hasClass('active')) {
				price = price + addition;
				$('.final-price').html(price);
				}else{
				price = price - addition;
					$('.final-price').html(price);
			}
	}

});

function showHide (event, what) {
		if ($(event.target).hasClass('active')) {
			$(what).toggleClass('hide');
		}else{
			$(what).toggleClass('hide');
		}
	}
