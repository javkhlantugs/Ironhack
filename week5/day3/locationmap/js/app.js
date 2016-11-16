
$(document).ready(function () {

	promptForLocation();
});
function promptForLocation(){
	if ('geolocation' in navigator){
		var button = $('.js-where');button.on('click', getLocation);
	}else{
		var errorShow = `<div class='alert alert-danger' role='alert'>
		Geolocation unavailable</div>`;

		$('.body').prepend(errorShow);
	}
}

function getLocation() {
 console.log('Getting location...');
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position) {
	console.log('Getting position')
	var lati = position.coords.latitude
	var longi = position.coords.longitude
	displayMap(lati, longi)
}
function onError(error) {
  console.log("Getting location failed: " + error);
}

function displayMap(latitude, longitude){
	console.log('displaying map')
	console.log(latitude)
	var theImage = `
	<img src="https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=10&size=400x300">`
	$('.js-result').append(theImage)
	console.log(theImage)
}

