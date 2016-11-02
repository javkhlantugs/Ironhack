var countCountries = require("./lib/count-countries.js");
//




var countries = ["Puerto Rico", "USA", "Nicaragua","France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];
var contree = ["Puerto Rico","Puerto Rico", "USA", "USA", "USA", "Nicaragua", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];

console.log("");
console.log("Countries represented in this room");
console.log("--------------------");

console.log("")

countries.forEach(function (aCountry) {
	console.log("Some of us are from " + aCountry + "!!");
	console.log(`Some of us are from ${aCountry}!!`);
 });


console.log("")

console.log(countCountries("USA", contree));
console.log("")
console.log("")
