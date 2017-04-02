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

// END of loop
// IF no match
//   RETRUN false

function matchKeyValue(obj1, obj2){
var matched = false;
//get length of object 1
var obj1Length 
var obj2Length 

obj1Keys = Object.keys(obj1);
obj1Length = obj1Keys.length;
// console.log(obj1Length);
// console.log(obj1Keys);

obj2Keys = Object.keys(obj2);
obj2Length = obj2Keys.length;
// console.log(obj2Length);
// console.log(obj2Keys);

for (var i=0; i < obj1Length; i++ ){
//   console.log("first loop");
// console.log(obj1[obj1Keys[i]]);
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

// var arraySample = ["long phrase", "longest phrase", "longer phrase", "oh my my what a string"];

// console.log(longString(arraySample));

// arraySample = ["history", "bookmarks", "safari", "window"];
// console.log(longString(arraySample));

// arraySample = ["JavaScript reference", "Global Objects", "Function Properties", "Expressions & Operators"];
// console.log(longString(arraySample));


 var obj1 = { name: "Steven", age: 14, grade: "first"};
 var obj2 = { name: "adam", age:13};
 console.log(matchKeyValue(obj1,obj2));
 
 var obj1 = {name: "Steven", age: 13, grade: 89 };
 var obj2 = {name: "adam", age: 13};
 console.log(matchKeyValue(obj1,obj2));
 
 
 
 
 
 