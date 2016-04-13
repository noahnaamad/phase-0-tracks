// key=names; values=colors
var horses = {};

var colors = ["maroon", "sky blue", "fuchsia", "neon green"];

var names = ["Thuy", "Noah", "Jordan", "Anna"];

colors.push("invisible");
names.push("Olya");

// driver code
// console.log(colors);
// console.log(names);
// console.log(horses);


var count = colors.length;
for (var i = 0; i < count;  i++) {
  horses[names[i]] = colors[i];
};
console.log(horses);
	

function Car(color, type, ownerName, gas){
	this.color = color;
	this.type = type;
	this.ownerName = ownerName;
	this.gas = gas;

	this.drive = function(){
		console.log("Vroom Vroom");
	};


}

var myCar = new Car("blue", "sedan", "Noah", 10);
myCar.drive();
console.log(myCar.color);

var natCar = new Car("Silver", "SUV", "Natalie", 12);
console.log(natCar.type);
console.log(natCar.ownerName);

console.log("My car has " + myCar.gas + " gallons of gas");
myCar.driveFar = function(gallon){
	this.gas = this.gas - gallon;
};
myCar.driveFar(2);
console.log("My car has " + myCar.gas + " gallons of gas");

