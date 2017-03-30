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


function long_str(arr){
var str_long = arr[0];

for (var i = 1; i<arr.length; i++){
  
	if ((str_long.length) < (arr[i].length)){
		str_long = arr[i];
		
	}
}

return str_long;
}

var array_sample = ["long phrase", "longest phrase", "longer phrase", "oh my my what a string"];
console.log(long_str(array_sample));

