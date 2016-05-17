console.log("The script is running!");

function createGreenBorder() {
	var photo = document.getElementById("hplogo");
	photo.style.border = "3px solid green";
}

var photo = document.getElementById("hplogo");
photo.addEventListener("Click", createGreenBorder);

