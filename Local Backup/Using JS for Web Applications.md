# Using JS for Web Applications

## Document Object Model Manipulation (DOM)

The __document__ object represents the HTML document, it's a sub-object of the __window__ object.
So any object in the document hierarchy can be accessed.

Let's suppose our HTML code looks like this:

```html
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<script src=js/script.js></script>
	</head>
	<body>
		<p>
			Say hello to
			<input id="name" type="text">
			<button onclick="sayHello();">Say it!</button>
		</p>
		<div id="content"></div>
	</body>
</html>
```

>[!info]
>__document__ is a __HTMLDocument__ therefore ``document instanceof HTMLDocument`` is ``true``

First task, using an input space so the user types their name, then push a button for displaying a greeting text.

The method ``getElementById()`` takes the element in the object whose id is the mentioned as paramether of this method.
`getElementByClassName()` does the same for classes.


The button executes a ``sayHello()`` function, then we can define it in the JS script.

```js
function sayHello() {
	console.log(document.getElementById("name"));
}
```

The console's output is ``<input id="name" type="text">`` . For obtain the value of the _input_ object, use the attribute `value`. For setting the content of an object use `textContent` attribute.

So our function now looks like this:

```js
function sayHello() {
	var name = document.getElementById("name").value;
	var message = "Hello " + name + "!";
	document.getElementById("content").textContent = message;
}
```

What if we'd want to display the message as an `h2` header?. Using `innerHTML` attribute renders the message as HTML code. 

```js
function sayHello() {
	var name = document.getElementById("name").value;
	var message = "<h2>Hello " + name + "!</h2>";
	document.getElementById("content").innerHTML = message;
}
```

The `querySelector()` method selects the first object containing the given parameter.

```js
document.querySelector("#title"); // First object with the title id
document.querySelector("h1"); // Selects the first h1 element
```


| Argument | Meaning |
|-|-|
| "" | Tag names |
| "." | Classes |
| "#" | Id's |
| "[]" | Attributes |

For selecting all objects corresponding to a query use `querySelectorAll()`, which returns an array.

>[!Note]
>The `querySelectorAll()` function returns a _NodeList_ object, for turning it into an _Array_ use: `Array.prototype.slice.call(nodeListObj)`


If the `button` object hasn't an event listener set already, we can add it one in the JS script with the `addEventListener()` method.

```js
document.querySelector("button").addEventListener("click", sayHello);
```

>[!info]
>The `click` parameter invokes the `sayHello` function when the user clicks the mouse. Hence, it's the same `onclick` property

Go to the [Events](#Events) section for more information.


All properties added in HTML tags are object attributes, then it's possible to set them in JS:

```js
document.querySelector("button").onclick = sayHello;
```

Doing `document.addEventListener("DOMContentLoaded", anyFunction)` will trigger the function as soon as the page is loaded.

The following example triggers a function which takes the `event` argument that triggered it. 
The triggering event is the movement of the mouse, and we're tracking it's coordinates.

```js
document.querySelector("body").addEventListener("mousepad", 
function(event) {
	console.log(event.clientX);
	console.log(event.clientY);
});
```

The `mousepad` object is the event that triggered the function, so it's `clientX` and `clientY` attributes notifies the coords.


To modify the class attributte of an HTML tag, we can use `className` as the following example:

```js
document.querySelector("#navMenuButton").className = "active";
```

In case we'd like to get all the elements corresponding to a certain class name, use `getElementsByClassName`, it'll return an array for this elements.


To list all _document_ properties, use `console.dir` over _document_. Some of them are `title` and `URL`, the latter is not changeable.
Consider the following:

```js
document.title = "Going to a web page";
document.location = "github.com"; // Takes us to Google
```

Some elements could have the same _name_ tag, for referencing them all, use `getElementsByName` and pass the name as the argument. This will return an array.

If had a bunch of list elements (_li_), the best way for referencing them all would be:

```js
var listArray = document.getElementsByTagName("li");
```


### DOM traversal

The document hierarchy takes the form of a tree data structure, so we could take advantage of this feature:

```js
document.firstElementChild();
document.lastElementChild();
document.parentElement();
document.nextElementSibling();
document.previousElementSibling();
```

Another way for getting a child element is by it's index:

```js
var childCollect = document.children(); // HTMLCollection containing all childrens
var childArr = Array.from(childCollect); // Turning it into an array
```


### HTML elements

For modify the content of an object, we've seen we could use `textContent` or `innerHTML`, however, the latter is vulnerable to XSS (cross site script) attacks, so `textContent`  is more secure.
For instance, if the user had a window prompt for input text, `innerHTML` would allow them to insert malicious scripts.

For adding HTML elements we use the `createElement()` method giving the object's tag as argument and then insert the element created in the main document.

```js
var listItem = document.createElement("li");
listItem1.textContent = "chocolate";
listItem2.textContent = "ice cream";
var myList = document.getElementById("#desserts");
myList.prepend(listItem2); // Add element to the head of the list
myList.append(listItem1); // Add element to the rear of the list
myList.prepend(listItem2); // Add element to the head of the list
```

Suppose initially our list have the following elements:

-   Chocolate
-   Ice Cream
-   Banana Split
-   Gummy Bears
-   Brownie

By running the following script:

```js
var myList = document.querySelector("ul");
var newItem = document.createElement("li");
newItem.textContent = "Cake";
myList.insertBefore(newItem, myList.getElementsByTagName("li")[2]);
```

It looks now like this:

-   Chocolate
-   Ice Cream
-   Cake
-   Banana Split
-   Gummy Bears
-   Brownie

The `insertBefore()` method allows us to add elements wherever in the object. Takes the new object and the wanted position as arguments.


### CSS properties

For accessing the CSS properties of an object we use the `style` attribute. Some CSS properties are given in kebab case such as _background_color_, so for referencing to them in JS we use camel case.

```js
document.body.style.backgroundColor = "lightblue"; // Name
document.body.style.backgroundColor = "rgb(50, 255, 150)"; // RGB
document.body.style.backgroundColor = "#BED551"; // Hex
```

We could also change another properties such as:

```js
const title = document.getElementById("myTitle");
title.style.color = "rgb(50, 50, 200)";
title.style.fontFamily = "consolas";
title.style.textAlign = "center";
title.style.border = "2px solid";
title.style.display = "block";
```



## Events

When triggered an action is invoked. 

```js
function setFeatures(obj) {
  obj.style.backgroundColor = "rgb(150, 150, 200)"
  obj.textContent = "This is a boring text";
  obj.style.color = "rgb(0, 100, 100)";
  obj.style.fontfamily = "arial";
}
  
function changeFeatures(obj) {
  var rgbArr = [255, 255, 255];
  rgbArr.forEach((item, i, a) => a[i] = Math.round(Math.random()*item));
  obj.style.backgroundColor = `rgb(${rgbArr[0]}, ${rgbArr[1]}, ${rgbArr[2]})`;
  obj.textContent = "No, this is a fun text";
  obj.style.color = `rgb(0, 0, 0)`;
}
 
var funText = document.querySelector("#funText");
document.body.onload = () => setFeatures(funText);
funText.onmouseover = () => changeFeatures(funText);
```


Here's a bunch of some options:

- `onclick` : Button's event triggered by a click on them
- `onblur` : Will invoke the function when the user cliks everywhere else the button once they triggered it
- `onload` : Triggered once the element is loaded
- `onchange` : Is activated when the object is changed
- `onmouseover` : Activates when the mouse is over the element
- `onmouseout` : Activates when the mouse is out the element
- `onmousedown` : Activates when clicking down the mouse
- `onmouseup` : Activates when clicking up the mouse

An element can have many events, an useful way for attaching them to an object is by `addEventListener()`, however, the events attached don't start with _on_ as they do when assigning attributes to an object. Here is a example:

```js
var mySquare = document.querySelector("#mySquare");
mySquare.addEventListener("mouseover", changeColor);
mySquare.addEventListener("mouseout", changeColor);
  
function changeColor() {
  var rgbAr = [255, 255, 255];
  rgbAr.forEach((it, i, a) => a[i] = Math.round(Math.random()*it));
  mySquare.style.backgroundColor = `rgb(${rgbAr[0]}, ${rgbAr[1]}, ${rgbAr[2]})`;
}
```

What if two elements are overlapping and both have an event that activates both when triggering one?. Suppose there's a _div_ object inside an outer _div_ and both have attached the _onmouseover_ event, since the inner _div_ is inside the outer, when placing the mouse over it, both will trigger the event, but the inner will do it first!. So for activating the outer first, use the third argument (useCapture) in the `addEventListener()` method acting over the outer.

```js
var innerDiv = document.getElementById("innerDiv");
var outerDiv = document.getElementById("outerDiv");

innerDiv.addEventListener("onmouseover", turnBlue());
outerDiv.addEventListener("onmouseover", turnBlue(), true);

function turnBlue() {
	this.style.backgroundColor = "blue";
}
```


### Detecting key presses

Key press are events set in the window object. For pressing a key up or down use `keydown` and `keyup` respectively. When triggering an event, the corresponding function will handle it's argument as the event that triggered it. This event has the `key` attribute, wich is the key pressed.

The following example moves a square around the window with the arrow keys, that speeds up when the button is pressed.

```js
window.addEventListener("keydown", move);
  
var bttn = document.querySelector("button");
bttn.addEventListener("click", speedUp);
var speed = 1;
  
var y = 0;
var x = 0;
  
function move(event) {
  switch(event.key) {
    case 'ArrowUp':
      y -= speed;
      mySquare.style.top = y + "px";
      break;
    case 'ArrowDown':
      y += speed;      
      mySquare.style.top = y + "px";
      break;              
    case 'ArrowLeft':
      x -= speed;
      mySquare.style.left = x + "px";
      break;  
    case 'ArrowRight':
      x += speed;
      mySquare.style.left = x + "px";
      break;
  }
}
  
function speedUp() {
  speed += 1;
}
```



## The JQuery $

The `$` before a function makes it a JQuery function. Let's take this for example:

```js
$(function() {
	...
})();
```

The function above is the same as doing:

```js
document.addEventListener("DOMContentLoaded", function() {
	...
});
```

Therefore, as soon as the page is loaded, everything inside the function will be executed.

Another functionality of the `$` is to serve a `querySelector()` method. For instance:

```js
$("#navbarToggle").blur(function() {
	...
});
```

Is the same thing as doing:

```js
document.querySelector("#navbarToggle").addEventListener("blur", function() {
	...
});
```


## Window's attributes & methods

- ``innerWidth`` : Inner width of the window

- ``innerHeight`` : Inner height of the window

- ``outerWidth`` : Outer of the window

- ``outerHeight`` : Outer height of the window

- `scrollX` : Scroll x-bar current displacement

- `scrollY` : Scroll y-bar current displacement

- `location` : Current url location.

```js
window.location.href = "https://google.com"; // Takes us to Google
window.location.hostname; // Host IP adress
window.location.pathname;  // Path of the main document
```

- `open()` : Opens a new tab in a given web site

```js
window.open("https://google.com");
```

- `close()` : Closes the current window

- `print()` : Opens the print page interface

- `alert()` : Create an alert box

```js
window.alert("I love chocolate");
```

- ``prompt()`` : Display a prompt input

```js
window.prompt("Password: ");
```

- `confirm()` : Displays a dialog box with a confirm/cancel option

```js
window.confirm("Do you really want to continue?");
```

- `setTimeout()` :
Invokes a function after a time. Takes a function and time in ms as arguments.

```js
var i = 0;
var warnMssg = ["Your computer has now virus!!!", "Install the last antivirus software", "(3) new notifications"];
function warning() {
	alert(warnMssg[i]);
	i += 1;
	if (i == 3) {i = 0};
}

for(let j = 0 ; j < 9 ; j++) {
	setTimeout(warning, 3000);
}
```

- `clearTimeout()` :
Cancels the time in the timeout methods.

```js
function stopMssgs() {
    clearTimeout(x1);
    clearTimeout(x2);
    clearTimeout(x3);
}

var x1 = setTimeout(warning, 3000);
var x2 = setTimeout(warning, 3000);
var x3 = setTimeout(warning, 3000);

document.querySelector("button").onclick = stopMssgs;
```

- `setInterval()` :
Invokes a function repeteadly after a certain time.

>[!Info]
>Methods that involve time intervals such as `setTimeout()` and `setInterval()` are asynchronous

- `clearInterval()` :
Stops the execution of functions triggered by the `setInterval()` method.

In the following example, we are counting up to 10, the functions executes until the `clearInterval()` method stops it. Functions are executes after an interval of time (given in ms) set in the 2nd argument of `setInterval()`.

```js
var maxTime = 10;
var count = 0;

var myTimer = setInterval(countUp, 1000);

function countUp() {
	count += 1;
	console.log(count);
	if(count == 10) {clearInterval(myTimer)};
}
```


Another method involving timing, is the _console_'s method `time()` and `timeEnd()`.
The argument is the timer's name.

```js
console.time("myTimer"); // Starts timer
.
.
.
console.timeEnd("myTimer"); // Stops the timer
```



## Canvas API

Used for drawing graphics, creating shapes and data visualization.

First of all, create a `canvas` element in the HTML document and get it's `context` attribute with `getContext()` in the JS script.
The following are _context_ properties:

- `beginPath()` : Starts drawing
- `moveTo()` : Move the pencil to a given position. Takes: _x_, _y_
- `stroke()` : Makes visible the lines drawed
- `lineTo()` : Draws a line. Takes: _x, y_
- `lineWidth` : Set the width of the lines. Type: Number
- `fill()` : Fills a region delimited by drawed lines
- `strokeRect()` : Draws a rectangle border. Takes: _x_, _y_, _width_, _height_
- `fillRect()` : Draws a solid rectangle. Takes: _x_, _y_, _width_, _height_
- `strokeStyle` : Line color. Type: _String_
- `fillStyle` : Fill color. Type: _String_
- `arc()` : Draws a circle. Takes: _x_, _y_, _radius_, _startAngle_, _endAngle_ (angles given in radians)
- `fillText()` : Writes some text. Takes: _text_, _x_, _y_
- `font` : Sets the font of text. Type: _String_. (e.g.: "50px MV Boli")
- `textAlign` : Aligns text. Type: _String_. (e.g.: "center") 

The following example uses some of those properties:

```js
var myCanvas = document.querySelector("#myCanvas");
var myC = myCanvas.getContext("2d");

var spBtn = document.getElementById("spBtn");
var slBtn = document.getElementById("slBtn");

var a = 15;
var b = 15;
var scaleSpeed = 1;
var renderSpeed = 500;

spBtn.addEventListener("click", () => {
  renderSpeed -= 500;
  restartInterval();
});
slBtn.addEventListener("click", () => {
  renderSpeed += 500
  restartInterval();
});

myC.beginPath();
var myInterval = setInterval(scaleGrid, renderSpeed);

function restartInterval() {
  clearInterval(myInterval);
  myInterval = setInterval(scaleGrid, renderSpeed);
}

function scaleGrid() {
  if(a >= 30) {
    scaleSpeed = -1;
  } else {
    if(a <= 15) {
      scaleSpeed = 1;
    }
  }

  makeFunGrid(a, b);
  a += scaleSpeed;
  b += scaleSpeed;
}

function makeFunGrid(row, col) {
  sqrWidth = (myCanvas.width)/col;
  sqrHeight = myCanvas.height/row;

  let x = 0;
  let y = 0;

  for(let i = 0 ; i < col ; i++) {
    for(let j = 0 ; j < row ; j++) {
      myC.fillStyle = getRandColor();
      myC.strokeStyle = "black";
      myC.strokeRect(x, y, sqrWidth, sqrHeight);
      myC.fillRect(x, y, sqrWidth, sqrHeight);
      x += sqrWidth;
    }
    x = 0;
    y += sqrHeight;
  }

}

function getRandColor() {
  let rgbAr = [255, 255, 255];
  rgbAr.forEach((it, i, a) => a[i] = Math.round(Math.random()*255));
  let randColor = `rgb(${rgbAr[0]}, ${rgbAr[1]}, ${rgbAr[2]})`;
  return randColor;
}
```



## Cookies

Cookies are a small text file stored on the computer to remember information about the user saved in name-value pairs.

To check if we have cookies enabled use `navigator.cookieEnabled`. 

Creating cookies: Use name-value pairs, expiration date and store path

```js
document.cookie = "firtsName=Bob; expires=Sun, 7 December 2023 18:59:30 UTC; path=/";
document.cookie = "lastName=Schwammkopf; expires=Sun, 5 March 2023 14:15:30 UTC; path=/";

console.log(document.cookie); 
// Output <- 'firtsName=Bob; lastName=Schwammkopf'
```

>[!Info]
>Cookies already expired are deleted, therefore, they are no longer part of ``document.cookie``


>[!Info]
>Cookies will remain on the site although the code has been changed or the page is realoaded

For get any values from the `document.cookie` object, make sure to decode it:

```js
var decodedC = decodeURIComponent(document.cookie);
decodedC.split("; "); // Array containing all cookies name-value pairs
```


Here are some useful functions for handling cookies:

```js
function setCookie(name, value, daysToLive, path) {
    let myDate = new Date();
    myDate.setTime(myDate.getTime() + daysToLive*24*3600*1000);
    
    document.cookie = `${name}=${value}; expires=${myDate.toUTCString()}; path=${path}`;
}

function deleteCookie(name) {
    setCookie(name, null, null, null);
}

function getCookie(name) {
    let decodedCookie = decodeURIComponent(document.cookie);
    let cookAr = decodedCookie.split("; ");
    let value = null;

    cookAr.forEach((item) => {
        if(item.indexOf(name) == 0) {
            value = item.slice(name.length + 1, );
        }
    });

    return value;
}

function deleteAllCookies() {
    let decodedCookie = decodeURIComponent(document.cookie);
    let cookAr = decodedCookie.split("; ");
    
    cookAr.forEach((name) => {
        deleteCookie(name, null, null, null);
    });
}
```