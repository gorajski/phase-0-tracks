// Simulate .reverse("hello") from Ruby
// Read in a string
// pop off the last character and push it to a new string
// repeat until all the characters are on the new string

// REVERSE FUNCTION
function reverse(str) {

	var new_str = "";
	var str_len = str.length;

	for (var i = 0; i < str.length; i++) {
		new_str = new_str + str[str_len - i - 1];
	}
	return(new_str);
}

// DRIVER CODE
var string = "uptown funk";
var rev_string = reverse(string);

if (string.length != "") {
	console.log(rev_string);
}