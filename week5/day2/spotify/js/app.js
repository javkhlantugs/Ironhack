console.log("in the jQuery")

$(document).ready(function (){
	$(".js-input-form").on('submit', searchArtist);


	
	console.log("hello")
	console.log($(this))

});

function searchArtist (event) {
	console.log ("searching artist function")

		event.preventDefault();
	var userInput = $(".js-user-input").val();
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${userInput}`,
		success: showInfo,
		error: handleError,
	});
}

function showInfo(response) {
	console.log("success");
	console.log(response);
	$('.js-search-results').empty();
	var firstResult = response['artists']['items'];
	firstResult.forEach(function (theArtist){
	if (theArtist.images[0]) {
			var artistItem = `<div class="artists-result"><p class="btn-primary btn-lg floatart" data-toggle='modal' data-target="#myModal" data-artist-id=${theArtist.id}>${theArtist.name}</p>
					<img src='${theArtist.images[0]['url']}' class='${theArtist.name}'></div>`;
				}else{
				var artistItem = `<div class="artists-result"><p class="btn-primary btn-lg floatart" data-toggle='modal' data-target="#myModal" data-artist-id=${theArtist.id}>${theArtist.name}</p>
					<img src='http://www.agwest.com/used/images/default-image-agwest-thumb.jpg' class='${theArtist.name}'></div>
					`;	
				}
	$('.js-search-results').append(artistItem);
	});

	$(".btn-primary").on("click", showAlbum)

}

function showAlbum(event) {
	console.log("searching albums")
	event.preventDefault();
	var the_id = $(this).data("artist-id")
	// var the_id = event.currentTarget.data("artist-id")
	console.log(the_id)
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${the_id}/albums`,
		success: artistAlbums,
		error: handleError,
	})
}

function artistAlbums(response) {
	console.log('showing albums');
	console.log(response);
	var albumArt = response['items'];
	$('.modal-body').empty();
	albumArt.forEach (function(element) {
			var theUrl = element['images'][1]['url']
			$('.modal-body').prepend(`<img class='poto' src='${theUrl}'>`)
	});

}


function handleError (error){
	console.log("Error!");
	console.log(error.responseText);
}
