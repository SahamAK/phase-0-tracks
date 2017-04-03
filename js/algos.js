// Name: Saham Khozestnai
// Date: 3/29/2017
// Release 0
// Pseudocode
// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// This function will take an array of phrases or words as an input
// The output is the longest phrase or word in the array.
// get the first string in the array.
// WHILE not end of array DO the following:
// 	
// 	get the length of the first string.
// 	get the second strings  length.
// if longer then swap strings.
// keeep iterating and replacing the old string with the new string until you have reached the end of the array.


// This function will return the first longest string
function longString(arr){
var strLong = arr[0];

for (var i = 1; i<arr.length; i++){
  
	if ((strLong.length) < (arr[i].length)){
		strLong = arr[i];
		
	}
}

return strLong;
}

// Release 1:
// This functoin will:
// Take two objects as input
// WHILE not end of the first object 
//   take the key-value of the first object
//   While not end of the second object
//     IF the key-value match
//       RETURN true
    
//   End of loop
// IF no match
//   RETRUN false

function matchKeyValue(obj1, obj2){
var matched = false;

var obj1Length;
var obj2Length;
// place the keys ofr the objects in an array
obj1Keys = Object.keys(obj1);
obj1Length = obj1Keys.length;
// console.log(obj1Length);
// console.log(obj1Keys);

obj2Keys = Object.keys(obj2);
obj2Length = obj2Keys.length;
// console.log(obj2Length);
// console.log(obj2Keys);
// For each element if obj1 
for (var i=0; i < obj1Length; i++ ){
//   console.log("first loop");
// console.log(obj1[obj1Keys[i]]);
// compare to each element in obj2. if a match then return true
  for (var j=0; j <obj2Length; j++){
    // console.log("loop 2");
    // console.log(obj2[obj2Keys[j]]);
    if (obj1Keys[i] == obj2Keys[j]){
      if (obj1[obj1Keys[i]] == obj2[obj2Keys[j]]){
        matched = true;
      }
    }  

  }
}
return matched;
 }

//This function will get an arbitrary random integer between min and max
function getRandomArbitrary(min, max) {
  return Math.floor(Math.random() * (max - min +1)) + min;
}

//Release 2
// this function will
// Take a random integer between 1 -10;
//While length is less or equal the integer
// add a random alphabet letter to the string.
// end loop
//output: string of letters
function getRandomLetter(){
var strLength;
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var emptyStr ="";
var newArr = [];
strLength = getRandomArbitrary(1,10);

//console.log(strLength);

for (var i=0; i<strLength; i++){
  emptyStr +=alphabet[Math.floor(Math.random() * alphabet.length)];

}
 return emptyStr;
}
// This function will get an integer as an input
// It will generate an array of the length of that integer
//The array will consist of random letters of length 1 to 10
//Input: an integer
//Output: an array of words of varying length
function generatArr(num){
  var newArr = [];
  var string = "";

  for (var i =0; i < num ; i++){
    string = getRandomLetter();
    newArr.push(string);
  }

  return newArr;
} 


//Driver code
// This code will be executed 10 times
// WHile i<10 DO
//Geneerate an array of random length
//generate an array of random words with the above length
// find the longest string in the array
var totalTimes = 10;
var arrayLength;
var newArray = [];

for (var i = 0; i<10; i++){
  //Arbitrary length of array
  arrayLength = getRandomArbitrary(3,10);
  newArray = generatArr(arrayLength);
  console.log("The array is: ");
  console.log(newArray);
  longestWord = longString(newArray);
  console.log("Longest word in array: " + longestWord);

}













// var arraySample = ["long phrase", "longest phrase", "longer phrase", "oh my my what a string"];

// console.log(longString(arraySample));

// arraySample = ["history", "bookmarks", "safari", "window"];
// console.log(longString(arraySample));

// arraySample = ["JavaScript reference", "Global Objects", "Function Properties", "Expressions & Operators"];
// console.log(longString(arraySample));


 // var obj1 = { name: "Steven", age: 14, grade: "first"};
 // var obj2 = { name: "adam", age:13};
 // console.log(matchKeyValue(obj1,obj2));
 
 // var obj1 = {name: "Steven", age: 13, grade: 89 };
 // var obj2 = {name: "adam", age: 13};
 // console.log(matchKeyValue(obj1,obj2));
 
 
 
 
 
 