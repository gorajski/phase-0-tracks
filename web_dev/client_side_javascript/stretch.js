console.log("The script is running!");

function stretchHeight() {
	var photo = document.getElementsByTagName("img")[0];
	var new_size;

	if (isNaN(parseInt(photo.style.height))) {
	photo.style.height = "67px";
	} else {
		new_size = parseInt(photo.style.height) + 10;	//
		photo.style.height = new_size + "px";
	}
}

function shrinkHeight() {
	var photo = document.getElementsByTagName("img")[0];
	var new_size;

	if (isNaN(parseInt(photo.style.height))) {
	photo.style.height = "67px";
	} else {
		new_size = parseInt(photo.style.height) - 10;	//
		photo.style.height = new_size + "px";
	}
}
	
var photo = document.getElementsByTagName("img")[0];
photo.addEventListener("click", stretchHeight);
photo.addEventListener("dblclick", shrinkHeight);