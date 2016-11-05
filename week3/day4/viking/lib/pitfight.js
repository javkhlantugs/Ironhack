class Pitfight { 
	constructor(){
	this.vikingsArray = []	
	}
	addToArray(viking) {
		this.vikingsArray.push(viking);
	}
	theDuel () {
		var viking1 = this.vikingsArray[Math.floor(Math.random() * this.vikingsArray.length)];
		var viking2 = this.vikingsArray[Math.floor(Math.random() * this.vikingsArray.length)];
		if (viking1 === viking2) {
			viking2 = this.vikingsArray[Math.floor(Math.random() * this.vikingsArray.length)];
				}
		var duelReport = [];
		var viking2Health = viking2.health;
		var viking1Health = viking1.health;
		var i;
		for (i = 0; i <7; i++) {
		
		while (viking1Health > 20 && viking2Health > 20){
			viking2Health = viking2Health - viking1.strength;
			var viking1Attack = `${viking1.name} attacked ${viking2.name}. Now ${viking2.name}s health is ${viking2Health}`;
				duelReport.push(viking1Attack);
			viking1Health = viking1Health - viking2.strength;
			var viking2Attack = `${viking2.name} attacked back at ${viking1.name}. Now ${viking1.name}s health is ${viking1Health}`;
				duelReport.push(viking2Attack);
			}
		}
		return duelReport
	}
	}	

module.exports = Pitfight;