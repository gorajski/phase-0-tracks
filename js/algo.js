//RELEASE 0 
// define array of words
// define size buffer
// define word buffer
// for each word
// measure length
// if length is greater than size buffer
// 	store length in buffer
// 	add word to word buffer
// repeat for each word

function longest(array) {
	size = 0;
	word = "";

	for (var i = 0; i < array.length; i++) {
		if (size < array[i].length) {
			word = array[i];
			size = array[i].length;
		}
	}
			return(word);
}

//Driver Code for RELEASE 0
arr1 = ["balogna", "salami", "corned beef", "pastrami"];
arr2 = ["dev", "bootcamp", "chicago", "nighthawks"];
console.log(longest(arr1))
console.log(longest(arr2))
console.log("----")

// RELEASE 1
// define function(obj1, obj2)
// for each element pair of obj1
// take the key and plug it into obj2
// see what you get out
// if this value matches the value you get for the same key of obj1
// 	then true
// 	else false

function has_match(obj1, obj2) {
buffer = false;
	for (var prop in obj1) {
	  buffer = buffer || (obj2[prop] == obj1[prop]);
	}
	return(buffer);
}

// Driver code for RELEASE 1
var person1 = {name: "Steven", age: 54, job: "admin", golf_handicap: 2, kids: 5};
var person2 = {name: "Tamir", age: 54, job: "engineer", children: 3, drivers_license: true};
var person3 = {name: "Rudyard", age: 32, job: "author", kids: 3, willing_to_travel: true};

console.log(has_match(person1, person2));	//true, based on matching age.
console.log(has_match(person1, person3));	//false
console.log(has_match(person2, person3));	//false

// RELEASE 2
// define function(num)
// define alphabet string
// for num times
// 	clear dummy string
// for random number between 1 and 10
// 	dummy string = dummy string + random element of alphabet string
// end
// 	return dummy string
// end

function mk_test(num) {

var alphabet = "abcdefghijklmnopqrstuvwxyz"
var arr = []
for (var i = 0; i < num; i++) {
	var dummy = ""
	var word_len = Math.floor((Math.random() * 10) + 1);	// Randomly choose length of new word between 1 and 10 characters
	for (var j = 0; j < word_len; j++) {
		letter = Math.floor((Math.random() * 26))		// Randomly choose one letter from alphabet
		dummy = dummy + alphabet[letter];
	}
	arr[i] = dummy;
}
return(arr);
}

// Driver code for RELEASE 2
// Add driver code that does the following 10 times: 
// generates an array, 
// prints the array, 
// feeds the array to your "longest word" function, 
// and prints the result.

for (i = 0; i < 10; i++) {
	new_array = mk_test(4)		// Assignment didn't specify, so I chose to make arrays with four elements.
								// Code will work with any length.
	console.log(new_array);
	console.log(longest(new_array));
	console.log("----")
}