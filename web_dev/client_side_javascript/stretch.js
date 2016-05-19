console.log("The script is running!");

function stretchHeight() {
	var photo = document.getElementById("hplogo");
	if (isNaN(parseInt(photo.style.height))) {
		photo.style.height = "102px";
	} else {
	photo.style.height = "122px";		
	}

}

var photo = document.getElementById("hplogo");
photo.addEventListener("click", stretchHeight);