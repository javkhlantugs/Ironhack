class Car {
	constructor (model, noise) {
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}

	vroom () {
		console.log(`it goes ${this.noise}`);
	}

}

module.exports = Car;