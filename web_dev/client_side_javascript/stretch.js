console.log("The script is running!");

function stretchHeight() {
	var photo = document.getElementById("hplogo");
	var new_size = parseInt(photo.style.height) + 10;
	if (isNaN(parseInt(photo.style.height))) {
		photo.style.height = "102px";
	} else {
	photo.style.height = new_size + "px";		
	}

}

var photo = document.getElementById("hplogo");
photo.addEventListener("click", stretchHeight);