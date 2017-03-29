//This will reverse the string.
//Pseudocode
// This function will take in a a string as a parameter and reverse the string.
// read the string.
// for each character fronm the end of the string
//   put the character in a new string
//   decrement counter
// until counter is =0.


function reverse(str){
var str_2 = "" ;

for (var i = (str.length -1); i>=0; i--){
  str_2 += str[i];
}

return str_2;
}

var strNotEmpty = true;

//If string is not empty then call reverse and print the output.

if (strNotEmpty){
console.log(reverse("hello"));
}

