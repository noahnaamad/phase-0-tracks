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
						//console.log(obj[key1]);
					};
				};
			};
		};
	};

	return theyshare;
};

//driver code share
console.log(share({name: "Steven", age: 54, gender: "agender"}, {name: "Tamir", age: 54, gender: "genderqueer", height: 68}));
console.log(share({name: "Steven", age: 30, gender:"bigender"}, {name: "Tamir", age: 98, height: 67}));


//driver code longPhrase
// console.log(longPhrase(["1234", "12345678", "12345", "1"]));
// console.log(longPhrase(["long phrase","longest phrase","longer phrase"]));
// console.log(longPhrase(["yes", "now", "dog", "cat", "bee", "ah"]));

//driver code lengthOfLongest
//console.log(lengthOfLongest(["123456", "12345678", "1234567890"]));
