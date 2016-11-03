function caesarCipher(message, splitt) {
	if (splitt === undefined) {
		splitt = -3
	}
	var array = message.split("");
	var numerals = array.map(function (letter){
		return letter.charCodeAt(0);
	});
	var letters = numerals.map(function (numbers){
		var total = numbers + splitt
		if ((numbers >= 65 && numbers <= 90) || (numbers >= 97 && numbers <= 122)){
				if (total > 90 && total < 97){
				var nunu = total - 90;
				var theCharacter = 65 + nunu;
				return String.fromCharCode(theCharacter);
				}else if (total > 122) {
					var jay = total - 123;
					var theChar = 97 + jay;
					return String.fromCharCode(theChar);
				}else if (total < 65) {
					var yo = 64 - total
					var theChar = 97 - yo
					return String.fromCharCode(theChar);
				}else{
					return String.fromCharCode(total);
				}
		}else{
			return String.fromCharCode(numbers);
		}
	});
	var final = letters.join("");
	return final;
}

var variaable = caesarCipher("Et tu, brute?", 6);
console.log(variaable);