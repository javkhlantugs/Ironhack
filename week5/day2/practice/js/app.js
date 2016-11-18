console.log("app is ready");
$(document).ready(function (){

	$(".js-fetch-characters").on('click', fetchCharacters);
	$(".js-ackbar-form").on("submit", saveAckbar);
	$(".js-new-form").on("submit", saveNew);
});

function saveNew(event){
	event.preventDefault();
	var nameInput = $(".js-new-name").val();
	var occupationInput = $(".js-new-occupation").val();
	var weaponInput = $(".js-new-weapon").val();
	if (occupationInput === ''){
		occupationInput === "make dank memes";
	}

	if (weaponInput === '') {
		weaponInput = "memes";
	}
	var newInfo = {
		name: nameInput,
		occupation: occupationInput,
		weapon: weaponInput
	}

		$.ajax({
			type: "POST",
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: newInfo,
			success: showAckbar,
			error: handleError,
		});
}

function saveAckbar(event) {
	event.preventDefault();
	var weaponInput = $(".js-ackbar-weapon").val();
	var occupationInput = $(".js-ackbar-occupation").val();

	if (occupationInput === ''){
		occupationInput === "make dank memes";
	}

	if (weaponInput === '') {
		weaponInput = "memes";
	}
	var ackbarInfo = {
		name: "Admiral Ackbar",
		occupation: occupationInput,
		weapon: weaponInput,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: showAckbar,
		error: handleError,
	});

}

function showAckbar (infoFromApi) {
	console.log("Save Ackbar success");
	console.log(infoFromApi);
}

function fetchCharacters () {
	$.ajax({
	type: "GET",
	url: "https://ironhack-characters.herokuapp.com/characters",
	success: showCharacters,
	error: handleError,
});
}

function showCharacters (response) {
	console.log("Success!");
	$('.js-character-list').empty();
		response.forEach(function (oneCharacter){
			var characterItem = `<li> <h3>${oneCharacter.name}</h3> 
									<p>${oneCharacter.weapon}</p>
									<p>${oneCharacter.occupation}</p>
									<p>${oneCharacter.debt}</p>
									<p>${oneCharacter.id}</p>
								</li>`;

		$('.js-character-list').append(characterItem);
 });
	}

function handleError (error){
	console.log("Error!");
	console.log(error.responseText);
}