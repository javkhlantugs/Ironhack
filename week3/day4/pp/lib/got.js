var fs = require('fs');
var read = require('read');

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
	   
    var episodes = JSON.parse(file);
    highestRatings(episodes)

}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

// function afterSearch(ep) {
// 	ep.sort(function(a, b){
// 		return a.episode_number-b.episode_number
// 	});
// 	for (i = 0; i < ep.length; i++) {
// 	console.log(`Title: ${ep[i].title}  Episode ${ep[i].episode_number}`);
// 	console.log(ep[i].description);
// 	console.log('Rating: ' + ep[i].rating + " " + '*'.repeat(Math.round(ep[i].rating)));
// }}
function highestRatings(ep) {
	ep.sort(function(a, b){
		return a.episode_number-b.episode_number
	});
	var newArr = ep.filter(isBigEnough)
	for (i = 0; i < newArr.length; i++) {
	console.log(`Title: ${newArr[i].title}  Episode ${newArr[i].episode_number}`);
	console.log(newArr[i].description);
	console.log('Rating: ' + newArr[i].rating + " " + '*'.repeat(Math.round(newArr[i].rating)));
}}
function isBigEnough(episode) {
  return episode.rating >= 8.5;
}