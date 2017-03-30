//Name: Saham Khozestnai
//Date: 3/29/2017
//Pseudocode
//Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//This function will take an array of phrases or words as an input
//The output is the longest phrase or word in the array.
//WHILE not end of the loop DO the following:
// get the first string in the array.
//get the length of the first string.
// get the second strings  length.
// if longer then swap strings.
//keeep iterating and replacing the old string with the new string until you have reached the end of the array.
//


function longString(arr){
var strLong = arr[0];

for (var i = 1; i<arr.length; i++){
  
	if ((strLong.length) < (arr[i].length)){
		strLong = arr[i];
		
	}
}

return strLong;
}

var arraySample = ["long phrase", "longest phrase", "longer phrase", "oh my my what a string"];

console.log(longString(arraySample));

arraySample = ["history", "bookmarks", "safari", "window"];
console.log(longString(arraySample));

arraySample = ["JavaScript reference", "Global Objects", "Function Properties", "Expressions & Operators"];
console.log(longString(arraySample));


