var Viking = require("./lib/viking.js");
var Pitfight = require("./lib/pitfight.js");

var zev = new Viking("Zev", 200, 26);
var tumur = new Viking("Tumur", 280, 27);
var gal = new Viking("Gal", 240, 33);
var tribe = new Pitfight();
var quixote = new Viking("Quixote", 310, 20);

tribe.addToArray(zev);
tribe.addToArray(tumur);
tribe.addToArray(gal);
tribe.addToArray(quixote);

var duelResult = tribe.theDuel();

duelResult.forEach(function(x){
	console.log(x);
	console.log("");
})
