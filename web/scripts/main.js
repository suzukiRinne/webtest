/*
var myHeading = document.querySelector('h1');
myHeading.textContent = 'Hello world!';
*/

var type = document.getElementById("hhhh");
var iceCream= type.innerHTML;
  /*  alert(iceCream);*/

function price(num1, num2) {
    var buy = num1 * num2;
    var result ;
    if(buy>20)
         {result='expensive'}
    else{
        if (iceCream === 'chocolate') {result=iceCream+buy}
        else{result='not chocolate'}
    }

    return result;
}
document.querySelector('h1').onclick = function() {
    alert('Ouch! Stop poking me!');
}
/* 等同于
var myHTML = document.querySelector('html');
myHTML.onclick = function() {};*/


var myImage = document.querySelector('img');

myImage.onclick = function() {
    var mySrc = myImage.getAttribute('src');
    if(mySrc === 'pic/ico.png') {
        myImage.setAttribute('src', 'pic/aaa.png');
    } else {
        myImage.setAttribute('src', 'pic/ico.png');
    }
}


var myButton = document.querySelector('button');
var myHeading = document.querySelector('h1');
function setUserName() {
    var myName = prompt('Please enter your name.');
    localStorage.setItem('name', myName);
    myHeading.textContent = 'Mozilla is cool, ' + myName;
}

if(!localStorage.getItem('name')) {
    setUserName();
} else {
    var storedName = localStorage.getItem('name');
    myHeading.textContent = 'Mozilla is cool, ' + storedName;
}
myButton.onclick = function() {
    setUserName();
}