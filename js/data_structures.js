// key=names; values=colors
var horses = {};

var colors = ["maroon", "sky blue", "fuchsia", "neon green"];

var names = ["Thuy", "Noah", "Jordan", "Anna"];

colors.push("invisible");
names.push("Olya");

console.log(colors);
console.log(names);
console.log(horses);


var count = colors.length;
for (var i = 0; i < count;  i++) {
  var this_horse = {[names[i]]: colors[i]};
  horses[names[i]] = this_horse[names[i]]; 
};
console.log(horses);