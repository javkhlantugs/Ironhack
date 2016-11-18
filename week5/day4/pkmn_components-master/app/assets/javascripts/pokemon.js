$(document).on('ready', function() {
	$(".js-show-pokemon").on('click', function () {
		var pokemonUri = $(this).data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});


PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
this.apiUrl = pokemonUri ;
}
	render () {
		console.log(`rendering pokemon with url ${this.apiUrl}`);
	

	$.ajax({
		type: "GET",
		url: `/${this.apiUrl}`,
		success: PokemonApp.showPokemonModal,
		error: PokemonApp.handleError,
	});
	}
};

function filterByRank() {

}


PokemonApp.showPokemonModal = function (apiResult) {
	console.log("Pokemon API success")
	console.log(apiResult);
	var allTypes = []
	apiResult.types.forEach(function (x) {
		allTypes.push(x.name)
		});

	$(".js-pkmn-name").text(apiResult.name);
	$(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
	$(".js-pkmn-height").text(apiResult.height);
	$(".js-pkmn-weight").text(apiResult.weight);
	$('.js-pkmn-hp').text(apiResult.hp);
	$(".js-pkmn-attack").text(apiResult.attack);
	$(".js-pkmn-special").text(apiResult.sp_atk);
	$(".js-pkmn-speed").text(apiResult.speed);
	$('.js-pkmn-types').text(allTypes.join(", "))
	$(".js-pokemon-modal").modal("show");

	var pokeDescription = []
	apiResult.descriptions.forEach(function(x) {
		pokeDescription.push(x.name)
	});

	var okk = pokeDescription.sort();
	var highest = okk.slice(-1)
	console.log(highest)
	// apiResult.descriptions.forEach(function(x) {
	// 	if (x.name == okk.slice(-1))
	// }


// 	var resultWithId = []
// 	pokeDescription.forEach(function(x) {
// 		var n = parseInt(x.slice(-1))
// 		resultWithId.push(n)
// 	});
// 	var highest = getMaxOfArray(resultWithId)
// 	function getMaxOfArray(numArray) {
//   return Math.max.apply(null, numArray);
// }	

	
// 	$(".js-pkmn-description").text(highest)



};


PokemonApp.handleError = function (errorThankg) {
	console.log("api error");
	console.log(errorThang.responseText);

};