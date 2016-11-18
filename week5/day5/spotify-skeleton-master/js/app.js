$(document).ready(function (){
	$(".js-input-form").on('submit', searchForSong);
	$(".btn-play").on('click', playAndPause);
	

});




// Function to search for the song from Spotify API

function searchForSong(event) {
	
	event.preventDefault();
	var userInput = $(".js-user-input").val();
	
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&query=${userInput}`,
		success: goToTrack,
		error: handleError
	});
}

//======================================
//If searchForSong is successful

function goToTrack(response) {
	console.log("success");
	console.log(response);
	var artistName = response["tracks"]["items"][0]["artists"][0]["name"];
	var songName = response["tracks"]["items"][0]["name"];
	var coverImg = response["tracks"]["items"][0]["album"]["images"][0]["url"];
	var previewSong = response["tracks"]["items"][0]["preview_url"];
	$(".js-title").empty();
	$(".js-title").text(`${songName}`);
		$(".author").empty();
		$(".author").append(`<span class="author-name">${artistName}</span>`);
		$(".cover").empty();
		$(".cover").append(`<img src="${coverImg}">`);
		$(".js-audio").empty();
		$(".js-audio").append(`<audio class='js-audio-file' src="${previewSong}"></audio>`);

	$(".author-name").on('click', authorDetails);
	$(".js-audio-file").on('timeupdate', progressBarControl);
	
}

//======================================
//get info about the artists
function authorDetails() {
	var theArtist = $(".author-name").html();
	$.ajax({
		type: 'GET',
		url: `https://api.spotify.com/v1/search?type=artist&query=${theArtist}`,
		success: showArtistDetails,
		error: handleError
	})	
}

//======================================
//show details about artists

function showArtistDetails(response) {
	var popularity = response["artists"]["items"][0]["popularity"]
	console.log(response);
	
}

//======================================
// When button play is pressed

function playAndPause() {
	if ( $("#play-button").hasClass("playing")) {
		$("audio").trigger('pause');
		$(".btn-play").toggleClass('playing');


	}else{
		$("audio").trigger('play');
		$(".btn-play").addClass('playing')
	}

} 

//======================================
//Progress bar control

function progressBarControl(){
	var current = $(".js-audio-file").prop('currentTime');
	//$(selector).attr(attribute,value)
	$("progress").attr("value", `${Math.round(current * 1000)/1000}`)
}
//======================================
//Error handler

function handleError(error) {
	console.log("error!");
	console.log(error.responseText)
}