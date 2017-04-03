//Name: Saham Khozestani
//7.2 Mandatory Pairing Data Structures
//Release 0: In this release we created two arrays.
//clors array with different color
//horses array with different names
//We added a new horse to our array horse and new color to our colors array using push.
var colors = ["red", "blue", "green", "yellow"];
var horses = ["James", "John", "Dan", "Carla"];

colors.push ("purple");
horses.push("tito");

console.log(colors);
console.log(horses);

//Release 1: Build an object
//We are using the two arrays from Release 0 to create an object.
//The object will have a key of the horse name from horses array and value color from colors array.
//horses array and colors array are the same length.
var horse = {};
 for (var i = 0; i <= colors.length - 1; i++) {
    horse[horses[i]] = colors[i];
  }
  //print horse object
  console.log(horse);
  
 //Release 2: Build Many Objects Using a Constructor
 //Write a constructor function for a car.
 //Give it few properties of various data types, including a function.
 //Demonstrate that your function works by creating a few cars with it.

function Car(brand, capacity, color) {

  console.log("Beginning", this);
  

  this.brand = brand;
  this.capacity = capacity;
  this.color = color;
  

  this.efficiency = function() { 
    if (this.capacity >= 6) {
      console.log(this.brand + " has bad fuel efficiency");

    } else {
      console.log(this. brand + " has good fuel efficiency");
    } 
  }
  
  console.log("CAR INITIALIZATION COMPLETE");
};

//These are two instances of the constructor car.
var car_1 = new Car("Toyota", 6, "red");
var car_2 = new Car("Volvo", 3, "Yellow");

console.log("This is car_1 properties:")
console.log(car_1);
//This will call efficiency function for car_1
car_1.efficiency();

//reset capacity variable for car_2
car_2.capacity = 3;
car_2.efficiency();

Release 3: Research on your own
1. for...in loop is a way to get to the keys and values in an object. You can also use Object.keys() to get the keys Object.entries() also iterate properties as for...in loop
jQuery uses jQuery.each() method. _.each() which iterates over a list of elements.

2.Are there advantages to using constructor functions to create objects?Disadantages?
A constructor is useful when we want to create multiple similar objects with the same properties and methods.We use "new" to create a new
instance of a constructor.All object instances have a constructor properites. most of built-in constructores such Object,Regex, and array are scope-safe. 
They use pattern to determine whether the constructor is called with "new" or not. 
