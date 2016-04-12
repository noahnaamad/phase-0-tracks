//PSEUDOCODE REVERSE FUNCTION
//1) figure out the length of the string
//2) create variable outside the loop to store string
//3) have the for loop loop from i=0 to one less than the length of the string
//4) use i as the index of the string
//5) for each letter (determined by the index), concatenate it in front of the variable from (2)
//6) explicitly return the reversed word

function reverse (word){
	var reverse_word = "";
	var word_length = word.length;
	for (i=0; i<(word_length); i++){
		reverse_word = word.charAt(i) + reverse_word;
	};

	return reverse_word;
}

//driver code
console.log(reverse("hello"))
console.log(reverse("noah"))
console.log(reverse("i'm learning javascript!!"))