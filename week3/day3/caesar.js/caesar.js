function caesarCipher(message, splitt) {
	if (splitt === undefined) {
		splitt = -3
	}
	var array = message.split("");
	var numerals = array.map(function (letter){
		return letter.charCodeAt(0);
	});
	var letters = numerals.map(function (numbers){
		if ((numbers >= 65 && numbers <= 90) || (numbers >= 97 && numbers <= 122)){
				var nuu = numbers + splitt;
				return String.fromCharCode(nuu);
		}else{
			return String.fromCharCode(numbers);
		}
	});
	var final = letters.join("");
	return final;
}

var variaable = caesarCipher("Et tu, brute?");
console.log(variaable);