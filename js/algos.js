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


//driver code longPhrase
// console.log(longPhrase(["1234", "12345678", "12345", "1"]));
// console.log(longPhrase(["long phrase","longest phrase","longer phrase"]));
// console.log(longPhrase(["yes", "now", "dog", "cat", "bee", "ah"]));
//driver code lengthOfLongest
//console.log(lengthOfLongest(["123456", "12345678", "1234567890"]));
