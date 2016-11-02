var numbers = '80:70:90:100';
var colonand = '80:70&90:100';

function addAverage(theNumber) {
	if (theNumber === undefined) {
		return 0;
	}
	else {
		var splitted = theNumber.split(/[&:]+/);
		var integr = splitted.map(function (numba){
		return +numba;
		});
		var total = integr.reduce(function(a, b) { return a + b}, 0);
		var ave = total / integr.length;
		return ave;
		}
}

console.log(addAverage(numbers));
console.log(addAverage() === 0);
console.log(addAverage(colonand) === 85);
