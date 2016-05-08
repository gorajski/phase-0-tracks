// RELEASE_0 & RELEASE 1 ARRAYS
var colors = ["purple", "black", "green", "white"];
var horse_names = ["chauncey", "blake", "blaze", "percy"];

// RELEASE 0 DRIVER CODE
colors.push("grey");
horse_names.push("billy bob");

// RELEASE 1
// declrare an empty object
var horse_hash = {};
if (colors.length == horse_names.length) {
  //iterate through each array one element at a time
  //repeat until there are no more elements
  for (var i = 0; i < colors.length; i++) {
  //take the first element of horse_names as the key
  //take the first element of colors as the value
  //assign this pair to the hash
 horse_hash[horse_names[i]] = colors[i]
  }  // END LOOP
  console.log(horse_hash);
} 
else {
  console.log("ERROR: The two strings do not match!")
}  // END IF
// END RELEASE 0 & RELEASE 1


// RELEASE 2
// DEFINE FUNCTION
function Car(make, model, year, under_warranty) {

  // DEFINE ATTRIBUTES
  this.make = make;
  this.model = model;
  this.year = year;
  this.under_warranty = under_warranty;
  
  // DEFINE FUNCTIONS
  // honk FUNCTION
  this.honk = function() { console.log("honk honk!"); };
  
  // display FUNCTION
  this.display = function () {
    
    var warranty_status
    if (this.under_warranty) {
      warranty_status = " and is under warranty."
    }
    else {
      warranty_status = " but is NOT under warranty."
    }
    // PRINT Car INFORMATION
    console.log("Your new car is ready!");
    console.log("It's a "+ year + " " + make + " "+ model + warranty_status)
  }    

}

// DRIVER CODE
var GSP1247 = new Car("MacLaren", "F1 GTR", 2014, true);
var GXX4555 = new Car("Ford", "Fiesta", 1997, false);

// CALL EXAMPLES
GSP1247.honk();
GSP1247.display();
console.log("----");

GXX4555.honk();
GXX4555.display();
console.log("----");
// END OF RELEASE 2