
$(document).ready(function () {

	console.log("Readyt");
	promptForLocation();
});


function promptForLocation() {
	if ('geolocation' in navigator) {
		navigator.geolocation.getCurrentPosition(showPositionInDom, showError);
	}else{
		var errorHtml =`
		<div class="alert alert-danger" role="alert">
		<strong>Sprry!</strong
		Your browser is too old to use this site please upgrae to google chrome or something.
		</div>`;

		$('body').prepend(errorHtml);
	}

}


function beginWatch() {
	if ('geolocation' in navigator) {
		navigator.geolocation.watchPosition(watchSuccess, watchError);
	}
}

function watchSuccess (locinfo) {
	console.log("watch location");
	console.log(locinfo);

	var watchItem = `
	<li>
	latitude: $(locInfo.coords.latitude)
	<br>
	longitude: $(locInfo.coords.longitude)
	</li>`;

	$(".js-watch-list").append(watchItem);
}

function watchError (errInfo) {
	console.log("watch error:");
	console.log(errInfo);
}


function showPositionInDom (locationInfo) {
	console.log("Got position successfully");
	console.log(locationInfo);
	 $('.js-lat').html(locationInfo.coords.latitude);
	 $('.js-lng').html(locationInfo.coords.longitude);
}

function showError (errorInfo) {
	console.log("Error getting position");
	console.log(errorInfo);
	var positionErrorHtml=`
	<div class='alert alert-warning' role='alert'>
	<strong>Sorry!</strong>
	</div>`;

	$('.body').prepend(positionErrorHtml);
	}
