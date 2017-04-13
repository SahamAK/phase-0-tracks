console.log("Im here")
var newHeading = document.createElement("h1");
var newParagraph = document.createElement("p");
var h1Txt = document.createTextNode("Welcome Pets");
var pTxt = document.createTextNode("It is a lovely day for a walk in the park!");

newHeading.appendChild(h1Txt);
newParagraph.appendChild(pTxt);
var el = document.getElementById("div1");
var parent = el.parentNode;

parent.insertBefore(h1Txt, el);
el.appendChild(newParagraph);

var p1 = document.getElementById("p1");
p1.style.background = "yellow";

var p2 = document.getElementById("p2");
p2.style.fontWeight = "900";
p2.style.color = "blue";
document.getElementById("myBtn").onclick = displayTxt;
function displayTxt(){
	document.getElementById("demo").innerHTML = "IT IS NOT ABOUT PETS ANYMORE";

}
   