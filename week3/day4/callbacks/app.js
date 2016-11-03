"use strict";
var fs = require("fs");

// read must be installed (npm install read)
var read = require("read");

console.log ("")
console.log("Start of Program")

//=======================================

fs.readFile("./movies.txt", "utf8", function (error, contentsOfFIle) {
	if (error) {
		console.log("oh no! there was a file a read error.");
	}
	else{
	var arrayOfMovies = contentsOfFIle.split("\n");
	console.log(arrayOfMovies);
}
});
function after5Seconds() {
	console.log("5 seconds");
}

setTimeout(after5Seconds, 5000);
setTimeout(function (){
	console.log("2 seconds")
}, 2000);
console.log("");
console.log("END OF PROGRAM");
console.log("");	