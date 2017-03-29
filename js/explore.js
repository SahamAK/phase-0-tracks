//This will reverse the string.
//Pseudocode
// This function will take in a a string as a parameter and reverse the string.
// read the string.
// for each character fron the end of the string
//   put the character in a new string
//   decrement counter
// until counter is =0.


function reverse(str){
var str_2 ;

for (var i = str.length; i>=0; i--){
  str_2 += str[i];
}

return str_2;
}

var strNotEmpty = true;

if (strNotEmpty){
console.log(reverse("hello"));
}

