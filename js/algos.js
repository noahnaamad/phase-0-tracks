//this function returns the length of the longest phrase in an array
function lengthOfLongest(array, arrayLength){
	var lengthOfLongestPhrase = 0;
	for (i=0; i<arrayLength; i++){
		var thisPhrase = array[i];
		var lengthThisPhrase = thisPhrase.length;
		if (lengthThisPhrase > lengthOfLongestPhrase){
			lengthOfLongestPhrase = lengthThisPhrase;
		};
	};
	return lengthOfLongestPhrase;
};

//this function returns the actual longest phrase(s) in an array of phrases
function longPhrase(array){
	var arrayLength = array.length;
	var lengthiest = lengthOfLongest(array, arrayLength);
	longestPhrases = [];
	for (i=0; i<arrayLength; i++){
		thisLength = array[i].length;
		if (thisLength == lengthiest){
			longestPhrases.push(array[i]);
		};
	};
	if (longestPhrases.length == 1){
		return longestPhrases[0];
	}
	else{
	return longestPhrases;
	}

}

//write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
//PSEUDOCODE:
//0) set a variable to false
//1) iterate through first object
//2) for each key/value pair in first object, iterate through second object and check if they are equal
//3) if they are, change the variable from (0) to true
//4) return variable from (0)

function share(obj1, obj2){
	var theyshare = false;
	for (var key1 in obj1){
		if (obj1.hasOwnProperty(key1)){
			for (var key2 in obj2){
				if (obj2.hasOwnProperty(key2)){
					if ((key1 == key2) && (obj1[key1] == obj2[key2])){
						theyshare = true;
					};
				};
			};
		};
	};

	return theyshare;
};

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// PSEUDOCODE
//0) create empty array, and array of all the letters
//1) create for loop that will loop the array's length times
//2) during each loop, 
//		2.1) compute random length 1-10
//			2.1.0) create empty string
//		2.2) create a for loop that will loop that random number.  during each loop:
//			2.2.0) create random number 0-25
//			2.2.1) to the string, concatenate item from array of letters
//		2.3) push the string to the array
//3) return the array

function randomStrings(num){
	var theStrings = [];
	var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
	for(i=0; i<num; i++){
		var theWord = "";
		var lengthOfWord = Math.floor(Math.random()*10 + 1);
		for (x=0; x<lengthOfWord; x++){
			var letterIndex = Math.floor(Math.random()*26);
			var theLetter = letters[letterIndex];
			theWord = theWord + theLetter;
		};
		theStrings.push(theWord);
	};
	return theStrings;
};


//driver code for longPhrase and randomStrings TOGETHER
for (j=1; j<11; j++){
	var lengthofArray = Math.floor(Math.random()*10 + 1);
	x = randomStrings(lengthofArray);
	console.log(j + ": the array created is: [" + x  + "]");
	y = longPhrase(x);
	console.log("The longest word(s) in that array is/are: " + y);
};


//driver code longPhrase
// console.log(longPhrase(["1234", "12345678", "12345", "1"]));
// console.log(longPhrase(["long phrase","longest phrase","longer phrase"]));
// console.log(longPhrase(["yes", "now", "dog", "cat", "bee", "ah"]));

//driver code lengthOfLongest
//console.log(lengthOfLongest(["123456", "12345678", "1234567890"]));

//driver code share
// console.log(share({name: "Steven", age: 54, gender: "agender"}, {name: "Tamir", age: 54, gender: "genderqueer", height: 68}));
// console.log(share({name: "Steven", age: 30, gender:"bigender"}, {name: "Tamir", age: 98, height: 67}));

//driver code randomStrings
//console.log(randomStrings(10));