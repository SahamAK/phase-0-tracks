//This will reverse the string.
//Pseudocode
// This function will take in a a string as a parameter and reverse the string.
// read the string.
// for each character fron the end of the string
//   put the character in a new string
//   decrement counter
// until counter is =0.
var str = "hello";

// function add(x, y) {
//   return x + y;
// }
function reverse(str){
var str_2 ;

for (var i=str.length; i>=0; i--){
  str_2 += str[i];
  //console.log(str_2);
}
//console.log(str_2);
return str_2;
}
console.log(reverse("hello"));

