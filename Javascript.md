# Javascript

For adding a JS script into the html document use the `<script>` tag:

```html
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<script src="js/script.js"></script>

		<script>
			<!--Everything inside here also works for adding js code-->
		</script>

	</head>
	<body>
	</body>
</html>
```

> [!info]
> Script tag can be wherever in the code



## Some basic concepts

A single variable can hold different data types.

```js
var x = "Hello World!";
```

For declaring an object we use: `var`, `const` or `let`

| Keyword | Meaning |
| ----- | ---------|
| `var` | Variable. Scope limited by functions. |
| `const` | Constant. Can't be reassigned. |
| `let` | Variable. Scope limited by blocks |

For instance:

```js
function testFunction() {
	var x = 10;
	const l = 12;
	l = 9; // Error! 'l' is a constant value
		 
	for(let i = 10 ; i > 0 ; i--) {
		console.log(i*x);
	}

	console.log(x); // 10
	console.log(l); // 12
	console.log(i); // Error! 'i' is not declared
}

testFunction();
console.log(x); // Error! 'x' is not declared
console.log(l); // Error! 'l' is not declared
```

Even though, we could mess our program if we happen to declare a variable that already exists as a window attribute (e.g.: `var name = "hey"`, since _name_ is a window property, so use `let` instead).


A way to display a variable in the console log is:

```js
console.log(x);
```

Concatenating an output:

```js
var nItems = 10;
console.log("Number of items: " + nItems);
console.log("Number of items: ", nItems);
```

Template literals can be used for placing variables within Strings.

```js
var price = 500;
var store = "Amazon"
var item = "laptop"; 

console.log(`I've bought a new ${item} for $${price} in ${store}`);
// Output <-- "I've bought a new laptop for $500 in Amazon"
```


For modify a variable use ```+=``` and ```-=```.
Also is posible to use ```counter++``` or ```counter--``` for increment/decrement a variable.

Regular math operators: ```+```, ```-```, ```*```, ```/```, `%`.

> [!Info]
';' is optional at the end of each instruction

>[!info]
>Use ```//``` for comments and `/* */` for multiline comments.

### Conditional clause

```js
if(x == undefined) {
	...
}
```

Consider these cases:

```js
if(false || null || undefined || "" || 0 || NaN) {
	// Any line inside this conditional won't be executed
}
```

```js
if(true && "a" && 1 && -1 && "false") {
	// Any line inside this conditional will be executed
}
```

>[!Note]
>The boolean of any input can be find out by `console.log(Boolean(myInput))`


### Switch clause

When handling multiple conditionals for a single variable it's really useful to use __Switch__.

```js
var x = Math.round(Math.random() * 10);

switch(x) {
	case 0: console.log("The number is 0");
			break;
	case 1: console.log("The number is 1");
			break;			
	.
	.
	default: console.log("The number is 10");
}
```


### For loop

```js
for(var i  = 0 ; i < 10 ; i++) {
	...
}
```


### While loop

```js
var rains = isRaining();
while(rains) {
	stayAtHome();
}
```


### Do while loop

It executes at least once.

```js
var rains = isRaining();
do {
	stayAtHome();
} while(rains);
```


>[!Info]
>`continue` and `break` keywords are available in JS

### Comparison operators

| Operator | Meaning |
| ---------- | ----------- |
| < | less than |
| > | greater than |
| <= |  less than or equal to |
| >= |  greater than or equal to |
| == | equal to |
| != | not equal to |
| === | strict equal |
| !== | not strict equal |

Comparing Strings is as simple as doing: ```str1 > str2```.

>[!note]
>```'Banana' < 'apple'``` 's output is ```true```, then consider uppercases when comparing

By doing ```'10' == 10 ``` the output is true, since ```'10'``` turns into a number. 
Otherwise, ```'10' === 10 ``` 's output is false.


### Logical operators

| Operator | Meaning |
| ---------- | ---------- |
| && | AND |
|ll | OR |
| ! | NOT |

In the following case, the variable will take the original value instead of it's boolean:

```js
var x = undefined || "hello";
```

So ```x``` is ```hello``` since ```undefined``` is taken as false.


### Bitwise logical operators

| Operator | Meaning |
| ---------- | ---------- |
| << | Shifts bits to he left |
| >> | Shifts bits to the right |
|~ |  One's complement |
| & | Bitwise logical AND |
| l | Bitwise logical OR |
| ^ | Bitwise logical XOR |


### Ternary operator

Is a shortcut for _if_ statements.

```js
var rains = isRaining();
var weekend = isWeekend();

(rains && weekend) ? stayAtHome() : hangOut();
```


### Functions

The following is an example of functions implementation:

```js
function compare(x, y) {
	return x > y;
}

var x = compare(4, 7);
```

By the way, doing ```compare(3, "a")``` or ```compare()``` is totally legal. In the second case, the argument is __undefined__ type.

Functions are nothing more than objects. Hence, it's possible to assigning them attributes.

```js
compare.version = "v.1.0.0";
```


#### Arrow functions

A compact way to write functions is by just using it's arguments and the algorithm

```js
var myFunction = (x, y) => Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2))
myFunction(3, 4); // 25

var shortF = () => "Hello world";
console.log(shortF()); // "Hello world"
```

For more than 1 line it's necessary to use curly braces.


#### Function factory

Functions are returnable, so we can make a function factory!

```js
function makeMultiplier(factor) {
	var myFunction = function(x) {
		return factor*x;	
	};
	
	return myFunction;
}

var multiplyBy6 = makeMultiplier(6);
console.log(multiplyBy6(3)); // This should return 18
```

By the way, a _function expression_ or an anonymous function was used in the last block.

```js
var myFunction = function(x) {
	return factor*x;	
};
```


Functions can also be taken as arguments of another functions (aka _callbacks_). For instance:

```js
function doOperation(x, operation) {
	return operation(x);
}

console.log(doOperation(4, multiplyBy6)); // This should return 24
```


#### Rest parameters

A function takes an undefined number of parameters and pack them in an _Array_

```js
function sum(...nums) {
	var total = 0;
	for(let num of nums) {
		total += num;
	}
	return total;
}

sum(4, 5); // 9
sum(); // 0
sum(4, 5, 8, 7, 9); // 33
```


#### Inmediately Invoked Function Expression (IIFE)

The following is creating a function at the same time as it's being invoked.

```js
(function(name) {
	console.log("Hello " + name);
})("world");
```

They are usually used for placing variables in their own execution context without interfering with the global scope.


## Types

JS has 7 built-in types, 6 primitives and one Object type.

### Primitive types

Represent single inmutable values, so these become read-only.
Those are:

- Boolean: Uses keywords ```true``` and ```false```
- Undefined: No value has been ever set to a previous declared variable
- Null: Lack of value. For setting a variable to null, use ```null``` keyword
- Number: Is a double-precision 64-bit floating point
- String
- Symbol

> [!info]
> JS does not has an integer data type, by the way, they are just a subset of doubles

>[!info]
>For inquire for an object type use `typeof myObj`

Type conversion is as simple as:

```js
var x = "4";
x = Number(x);
```


Consider the following input:

```js
console.log(undefined/5);
console.log(Number("Pizza"));
```

Both outputs are **NaN**, which stands for _Non a Number_. For checking that case use `isNan()`.


### Object type

Is a collection of name/value pairs.

Object creation:

```js
var mechanism = new Object();
mechanism.job = "Drilling";
mechanism.hoursPerDay = 16;
mechanism.spurGear = new Object();
mechanism.spurGear.brand = "SKF";
mechanism.spurGear.gearRatio = 32;

```

An object with some attributes and nested attributes has been defined.
It's possible to call those attributes in different ways:

```js
console.log("The mechanism will be used for: " + mechanism.job);
console.log("It'll be working " + mechanism["hoursPerDay"] + " hours per day");
```

Using square brackets allows to call or instantiate object names that contain space within them. For instance: ```mechanism["number of elements"] = 16```.

This is a better way for creating objects:

```js
var Auto = {
	carBrand: "Volkswagen",
	averageSpeed: 80,
	motor: {
		nominalSpeed: 1800,
		nominalTorque: 60,
		efficiency: 85
	},
	"Number of doors": 4 
};
```


We can work with attributes and methods:

```js
var literalCircle = {
	radius: 10,
	getArea: function() {
		return Math.PI * Math.pow(this.radius, 2);
	}
};
```

For iterating elements over an object:

```js
for(var prop in Auto) {
	console.log(prop + ": " + Auto[prop]);
}
```


>[!info]
>The __window__ object is the most global object in JS.
>As it's the global scope, any __window__'s property can be called just naming it.


>[!note]
>To find out if an object is an instance of a certain class use ``myObject instanceof myClass``


#### The self statement

There's a bug in JS where the attribute being referenced by ```this```, references the global object __window__ instead of the object itself.

Let's consider:

```js
var literalCircle = {
	radius: 10,
	
	getArea: function() {

		var increaseRadius = function() {
			this.radius = 20;
		};
		
		increaseRadius();
		console.log(this.radius); // Radius = 10. Why?

		return Math.PI * Math.pow(this.radius, 2);
	}
};

console.log(literalCircle.getArea());
```

```increaseRadius``` is a function inside a function, therefore, any ```this``` keyword inside it will reference the attribute of the __window__ object instead of the current object. So in the precious example, ```window.radius``` must be equal to 20.

For solving this, we can work with the ```self``` keyword. Let's take a look to the new version:

```js
var literalCircle = {
	radius: 10,
	
	getArea: function() {
		var self = this; // Changes made

		var increaseRadius = function() {
			self.radius = 20; // Changes made
		};
		
		increaseRadius();
		console.log(this.radius); // Radius = 20

		return Math.PI * Math.pow(this.radius, 2);
	}
};

console.log(literalCircle.getArea());
```


#### Passing data

> [!Info]
> Primitive types are passed by value, while objects are passed by reference

In the normal scenario we get:

```js
var a = 7;
var b = a;
b = 5;

console.log(a); // Remains being 7
```

Otherwise, objects work different:

```js
var a = {x: 7};
var b = a;
b.x = 5;

console.log(a.x); // Output is 5
```


#### Function constructors

```js
function Circle(radius) {
	this.radius = radius;
	this.getArea = function() {
		return Math.PI * Math.pow(this.radius, 2);
	};
}

var myCircle = new Circle(10);
console.log("The circle's area is: " + myCircle.getArea);
```

Notice every time a new circle is created a ```getArea()``` function is created for each, we don't necessary need this. Therefore, using the __prototype__ property, ```getArea()``` function is created once for all circle instances.

```js
function Circle(radius) {
	this.radius = radius;
}

Circle.prototype.getArea = function() {
	return Math.PI * Math.pow(this.radius, 2);
};
```



## Classes

The traditional way to handle objects.

```js
class Auto {
	carBrand = "Volkswagen";
	averageSpeed = 80;
	startEngine() {
	}
	speedUp() {
	}
	brake() {
	}
}

var myCar = new Auto();
myCar.averageSpeed; // 80
myCar.startEngine();
```

### Constructors

Setting attributes with an init function. Use the `constructor` keyword.

```js
class Auto {
	constructor(carBrand, averageSpeed) {
		this.carBrand = carBrand;
		this.averageSpeed = averageSpeed;
	}

	startEngine() {
	}
	speedUp() {
	}
	brake() {
	}
}

var myCar = new Auto("Volkswagen", 85);
```


### The static keyword

Each object have their own properties. But why if we'd want to set a shared property for all objects of a class?

```js
class Auto {
	static carsSelled = 0;
	
	constructor(carBrand, averageSpeed) {
		this.carBrand = carBrand;
		this.averageSpeed = averageSpeed;
		Auto.carsSelled += 1;
	}

	startEngine() {
	}

	static destroyAllAutos() {
	}
}

var auto1 = new Auto("Ferrari", 110);
var auto2 = new Auto("Rolls Royce", 105);
var auto3 = new Auto("Lamborghini", 120);

console.log("Number of cars selled: ", Auto.carsSelled);
Auto.destroyAllAutos();
```

Notice that the `static` keyword can be used both over attributes and methods, but at the time of invoking them, it is important to do so with the class name.


### Inheritance

For inheritate properties to a class from another use the `extends` keyword.

```js
class Mammal {
	breaths = true;	
	eat() {
	}
	move() {
	}
}

class Dog extends Mammal {
	play() {
	}
	bark() {
	}
}
```

A child class will inheritate all attributes and methods from the parent class.

Working with constructors sometimes requires to take the parent class's arguments within a child class constructor.

```js
class Mammal {
	breaths = true;	

	constructor(name, age) {
		this.name = name;
		this.age = age;
	}
	
	eat() {
	}
	move() {
	}
}

class Dog extends Mammal {
	constructor(name, age, race, color) {
		super(name, age);
		this.race = race;
		this.color = color;
	}
	
	play() {
	}
	bark() {
	}
}

var myDog  = new Dog("Mika", 4, "Schnausser", "Gray");
```


### Getters & Setters

Functions for getting or setting object's attributes use the `get` and `set` keywords if we'd want to name these methods as their attributes. Conventional way is:

```js
class Dog extends Mammal {

	constructor(name, age, race, color) {
		super(name, age);
		this.race = race;
		this.color = color;	
	}

	getRace() {
		return this.race;
	}

	setRace(race) {
		this.race = race;
	}
}
```

If we'd want to go further, an alternative way is:

```js
class Dog extends Mammal {

	constructor(name, age, race, color) {
		super(name, age);
		this._race = race;
		this._color = color;	
	}

	get race() {
		return this._race + "and by the way it's color is " + this._color;
	}

	set race(race) {
		if(race == "Golden retriever") {
			console.log("Sure your dog's color is gold");
		}
		this._race = race;
	}
}


var myDog  = new Dog("Mika", 4, "Schnausser", "Gray");
myDog.race = "Golden retriever"; // Output <- "Sure your dog's color is gold"
console.log(myDog.race); // Output <-Golden retriever and by the way it's color is Gray

```

An underscored attribute indicates that it's a protected variable.


## Arrays


>[!info]
>Arrays are mutable objects

Creating and assigning elements to an array:

```js
var myArray = new Array();
myArray[0] = "Hello World";
myArray[1] = 3;
myArray[2] = function(text) {
	var someText = "I say " + text + " to everyone";
	return someText;
}
myArray[3] = {
	course: "HTML, CSS & JS"
};

console.log(myArray[2](myArray[0])); // Output: 'I say Hello World to everyone'
```

Not only primitive data types, also objects (functions are a subset of them) can be assigned to an array.

Also is possible to short hand create them:

```js
var myArray = ["Hello World", 3, {course: "HTML, CSS & JS"}];
```

For array's length use ```myArray.length```.

For looping the elements of an _Array_ is convenient to use:

```js
for(let obj of myArray) {
	console.log(obj);
}
```


### The spread operator

Unpacks all the elements from an array

```js
var myArray = [1, 4, 5, 6];
Math.max(...myArray); // 6

var otherArray = [4, 8, 7];
otherArray.push(...myArray); // [4, 8, 7, 1, 4, 5, 6]
```


### Methods

- `push()` :
Add an element to the end of the array

- `pop()` :
Removes the last element

- `unshift()` :
Add an element to the head of the array

- `shift()` :
Removes the first element

```js
var myArray = ["apple", "orange", "grapes"];
myArray.unshift("banana"); // ["banana", "apple", "orange", "grapes"]
myArray.pop(); // ["banana", "apple", "orange"]
myArray.push("coconut"); // ["banana", "apple", "orange", "coconut"]
myArray.shift(); // ["apple", "orange", "coconut"] 
```

- `indexOf()` :
Shows the index of the first match.

```js
myArray.indexOf("orange"); // 1
```

- `sort()` :
Sorts an array.
However, when sorting numbers they are naturally given as string values in arrays, this doesn't works like it's supposed ("25" > "100", because "2" > "1"). For doing so:

```js
var a = [4, 70, 35, 8, -4];
a.sort(); // [-4, 35, 4, 70, 8] (Disordered)
a.sort(function(x, y) {return x - y}); // [-4, 4, 8, 35, 70] (Ascending)
a.sort(function(x, y) {return y - x}); // [70, 35, 8, 4, -4] (Descending)
```

- `reverse()` :
Reverses an array

- `forEach()` :
For every single element in the array there will be executed a function. That function must accept up to 3 parameters whose are `element`, `index`, `array`. The name of these parameters are not important, but the order they are placed in the function template is.

```js
function capitalize(element, index, array) {
	array[index]  = element[0].toUpperCase() + element.slice(1, element.length);
}

function print(element) {
	console.log(element);
}

var myArray = ["ohio", "kansas", "delaware"];
myArray.forEach(capitalize); // ["Ohio", "Kansas", "Delaware"]
myArray.forEach(print);
```

- `map()` :
For every element of the array evaluates a function and returns a new array

```js
function powerOf2(num) {
	return Math.pow(num, 2);
}

var a = [2, 4, 8];
var squared = a.map(powerOf2); // squared <- [4, 16, 64]
```

- `filter()` :
Generates a new array whose elements were filtered by a function from an old array

```js
function tooOld(num) {
	return num >= 80;
}

var ages = [19, 8, 71, 85, 40, 91];
var oldAges = ages.filter(tooOld); // oldAges <- [85, 91]
```

- `reduce()` :
Invoke a function over an array the times enough to cover all the elements.
The first parameter of the function is an acummulation variable while the second one is the current element

```js
function sumUp(acValue, curValue) {
	return acValue + curValue;
}

var a = [50, 80, 75, 60, 5];
var total = a.reduce(sumUp); // total <- 270
```


## Maps

Objects holding key-value pairs.

For create a Map object:

```js
var myMap = new Map([
	["Burger", 5],
	["Pizza", 4],
	["Ramen", 10], 
	["Coke", 2]
]);
```


### Methods

- `forEach()` :
Evaluates a function with each of it's value-key elements.
The arguments of the function must be `value`, `key` in that order.

```js
var myMap = new Map([
	["Burger", 5],
	["Pizza", 4],
	["Ramen", 10], 
	["Coke", 2]
]);

myMap.forEach((value, key) => console.log("${key} costs ${value}."));
```

- `get()` :
Given a key, obtain it's value holded

```js
myMap.get("Ramen"); // 10
myMap.get("Coke"); // 2
```

- `set()` :
Set a key-value pair or modify one already added in the map

```js
myMap.set("Hot dog", 8); // Hot dog added
myMap.set("Ramen", 15); // Ramen modified
```

- `delete()` :
Deletes a key-value pair given it's key

```js
myMap.delete("Hot dog"); // Hot dog is removed. Output <- true
myMap.delete("Rissotto"); // There's no Rissoto. Output <- false
```

- `has()` :
Given a key checks wheter if it belongs to the map or not

```js
myMap.has("Rissotto"); // Output <- false
myMap.has("Ramen");  // Output <- true
```

- `size` :
Size of the Map



## String methods


>[!Note]
>All string methods do not replace the original string, they always create a new one.


- ``length`` :
Obtains the length of a string

```js
let text = "Sample text";
let x = text.length; // x <- 11
```


- ``slice()`` : 
Slicing a string

```js
let text = "Sample text";
let x = text.slice(1, 10); // x <- "ample tex"
let x = text.slice(-6, -5); // x <- "e"
let x = text.slice(1); // x <- "ample text"
```


- ``substring()`` : 
Same as `slice()` but any value less than 0 in the parameters is taken as 0


- substr(_start_, _length of slice_): Slicing given a length

```js
let text = "Sample text";
let x = text.slice(1, 5); // x <- "ample"
```


- ``replace()`` :
Replace text with another

```js
let text = "Sample text";
let x = text.replace("Sample", "Cool"); // x <- "Cool text"
```

>[!Note]
>It only replaces the first match.

>[!Info]
>Case sensitive.

Using specific flags gets around this issues.

```js
// Ignoring case sensitive
let text = "This is a sample text contained in a sample string";
let x = text.replace(/SAMPLE/i, "cool"); // x <- "This is a cool text contained in a sample string"

// Replace all matches
let x = text.replace(/sample/g, "cool"); // x <- "This is a cool text contained in a cool string"

// Merging flags
let x = text.replace(/SAMPLE/ig, "cool"); // x <- "This is a cool text contained in a cool string"
```


`/Sample/g` is nothing more than a regular expression object, so another way to use them is by creating one as doing `new RegExp("Sample", "g")`.


- ``replaceAll()`` :
Works as ```replace()``` method does, but replaces all matches.


- ``toUpperCase()`` :
Converts a string to upper case

```js
let text = "sample text";
let x = text.toUpperCase(); // x <- "SAMPLE TEXT"
```


- ``toLowerCase()`` : 
Converts a string to lower case

```js
let text = "SAMPLE TEXT";
let x = text.toUpperCase(); // x <- "sample text"
```


- ``concat()`` : 
Merges 2 or more strings.

```js
let text1 = "Hello";  
let text2 = "World";  
let x = text1.concat(" ", text2); // x <- "Hello World"
```


- ``trim()`` : 
Removes white space from both sides of a string

```js
let text = "      Hello World!      ";  
let x = text.trim(); // x <- "Hello World!"
```


- ``trimStart()`` :
Removes just the left white space of a string

```js
let text = "      Hello World!      ";  
let x = text.trimStart(); // x <- "Hello World!      "
```


- ``trimEnd()`` : 
Removes just the right white space of a string

```js
let text = "      Hello World!      ";  
let x = text.trimEnd(); // x <- "      Hello World!"
```


- ``padStart()`` : 

Padding is about getting a string to have a desired length.
So adding a parameter in order to pad a string to the left, looks like this:
```js
let text = "Sample text";
let x = text.padStart(15, "x"); // x <- "xxxxSample Text"
```
As we can see, ```"Sample text"``` contains 11 characters, so filling it up to 15, adds 4 ```"x"``` to the left.


- ``padEnd()`` : 
Similar to ```padStart()``` but adds characters to the right instead

```js
let text = "Sample text";
let x = text.padEnd(15, "x"); // x <- "Sample Textxxxx"
```


- ``charAt()`` : 
Extracts a character from a specified position

```js
let text = "Sample text";
let x = text.charAt(4); // x <- l
```


- ``charCodeAt()`` : 
Extracts the unicode of a character from a specified position

Returns a UTF-16 code (integer between 0 -  65535).

```js
let text = "Sample text";
let x = text.charCodeAt(4); // x <- 108
```


- ``split()`` :
Converts a string into an array 

```js
let text = "Sample text";
let x = text.split(" "); // x <- ["Sample", "text"]
let x = text.split(""); // x <- ["S","a","m","p","l","e"," ","T","e","x","t"]
let x = text.split(); // x <- ["Sample text"]
```


## Math object properties

>[!Note]
>Make sure to always use `Math.` before any property


- `round()` : 
Rounds any number to an integer (>= .5 rounds up).

- `floor()` :
Rounds down.

- `ceil()` :
Rounds up.

- `pow()` :
Any number to the power of something.

```js
var x = Math.pow(2, 3); // x <-- 8
```

- `sqrt()` :
Square root.

```js
var x = Math.sqrt(25); // x <-- 5
```

- `abs()` :
Absolute value.

- `max()` :
Maximum value between all inputs.

```js
var x = 5;
var y = 7;
var z = 52;
var d = Math.max(x, y, z); // d <-- 52
```

- `min()` :
Minimum value between all inputs.

```js
var x = 5;
var y = 7;
var z = 52;
var d = Math.min(x, y, z); // d <-- 5
```

- `PI` : $\pi$

- `random()` :
Outputs a random number in the range: $0 <= x < 1$.


## Number format

Using the `toLocaleString()` method it's possible to represent a number as currency, adjust commas and dots according to a country, or working it as a psysic unit.

```js
var x = 17895645.167;
x.toLocaleString("en-US"); // 17,895,645.167 (US notation)
x.toLocaleString("de-DE"); // 17.895.645,167 (German notation)
x.toLocaleString("en-US", {style: "currency", currency: "USD"}); 
// $17,895,645.17
x.toLocaleString("de-DE", {style: "currency", currency: "EUR"});
// 17.895.645,17 €
x.toLocaleString(undefined, {style: "percent"});
// 1.789.564.517 %
x.toLocaleString(undefined, {style: "unit", unit: "celsius"});
// 17.895.645,167 °C
```



## Error handling

Getting around exceptions involves letting know the user he had commited a mistake without crashing the program. Take this for example:

```js
try {
	var a = prompt("Digit a number: ");
	var b = prompt("Digit a second number: ");

	if(b == 0) {
		throw "Infinity";
		if(a == 0) {
			throw "Indetermination";
		}
	}

	alert("The division result is ${c}")
} catch(error) {
	console.log(error);
}
```

When doing $anyNumber/0$ the result is a  _Number_  type although it's infinity, it doesn't raise any errors, so it's convenient throwing it as an error. In the other hand, $0/0$ is _Nan_ so it must be throwed as well.

Suppose we are working with files, and whether the program crashes or not, the file must be closed, so the `finally` statement will assure the closing of the file.

```js
finally {
	console.log("This line will always be executed");
}
```



## Date object

Is used to work with dates and times.

```js
var x = new Date();
console.log(x); // Thu Jan 05 2023 02:16:25 GMT-0500 (hora estándar de Colombia)

x = new Date(2024, 0, 4, 14, 31, 5);
console.log(x); // Thu Jan 04 2024 14:31:05 GMT-0500 (hora estándar de Colombia)

x = new Date("January 1, 2023 00:00:00"); // Sun Jan 01 2023 00:00:00 GMT-0500 (hora estándar de Colombia)
```


### Properties

- `setTime()` : Set time to a Date object

- `getTime()` : Gets the number of milliseconds since the midnight at the beginning of January 1, 1970, UTC

```js
var myDate = new Date();
myDate.setTime(myDate.getTime() + 365);
```

- `toUTCString()` : Converts a date to UTC string. Format suggested to handle every date

```js
console.log(myDate); // Fri Jan 13 2023 14:30:44 GMT-0500 (hora estándar de Colombia)
console.log(myDate.toUTCString()); // Fri, 13 Jan 2023 19:30:44 GMT
```

- `getFullYear()` / `setFullYear()` : Get year / Set year

- `getDate()` / `setDate()` : Get day of month / Set day of month

- `getDay()` / `setDay()` : Get day of week / Set day of week

- `getMonth()` / `setMonth()` : Get month / Set month

- `getHours()` / `setHours()` : Get hour / Set hour

- `getMinutes()` / `setMinutes()` : Get minutes / Set minutes

- `getSeconds()` / `setSeconds()` : Get seconds / Set seconds

- `getMilliseconds()` / `setMilliseconds()` : Get milliseconds / Set milliseconds


## Promises

An asynchronous method promises to return a value sometime in the future.
So before getting that value, we can determine what will happen in case the value is obtained as planned or we get an error instead.

The _Promise_ object can be in one of these 3 states:

- Pending: Initial state, not yet fullfiled or rejected
- Fulfilled: Task done sucessfully
- Rejected: An error happened

When a promise is either fulfilled or rejected it's said to be _settled_.

The promise object encapsulates 2 attributes: _state_ and _result_. Depending on each state, the result type may vary.

| Promise.state | Promise.result |
| --------- | ------------------ |
| "pending" | Undefined |
| "fulfilled" | A value |
| "rejected" | An error object |

The _result_ attribute is the result of an asynchronous operation.
The state of this operation stays pending initially for a while, so then it can be fulfilled or rejected.

Promises consist in two parts, producing and consuming.
In the producing code, we define the asynchronous process, as well as determining when the process is suceful and when is not. For this, a _Promise_ object is instantiated, takes a function as consturction argument, this function takes 2 arguments, one of them is the sucessful callback `resolve`, and the other one is the failure callback `reject`.
Those callback are defined in the consuming code. Where the Promise's `then` method set the algoritm of both callbacks as arguments.

```js
function isFileLoaded() {
	.
	.
	.
}

// Producing
const promise = new Promise((resolve, reject) => {
	var fileLoaded = isFileLoaded();
	
	if(fileLoaded) {
		resolve("File loaded");
	} else {
		reject("File NOT loaded");
	}
});

// Consuming
promise.then(value => console.log(value), error => console.log(error));
// Same as doing:
promise.then(value => console.log(value)).catch(error => console.log(error));
```

Another example:

```js
const wait = time => new Promise(resolve => {
	setTimeout(resolve, time);
});

wait(3000).then(() => console.log("Thanks for waiting!"));
```

Basically, the `then` method invokes the first function in case the promise returns a value, otherwise, the second is invoked instead.


### Async & await keywords

Makes it easier to write promises.

The `async` keyword before a function, makes it to return a _Promise_ object.
The following is an implementation of  a previous example:

```js
async function loadFile() {
	var fileLoaded = isFileLoaded();
	if(fileLoaded) {
		return "File loaded";
	} else {
		throw "Failed to load";
	}
}

loadFile().then(value => console.log(value), error => console.log(error));
```

So this is the same as doing:

```js
function loadFile() {
	var fileLoaded = isFileLoaded();
	if(fileLoaded) {
		return Promise.resolve("File loaded");
	} else {
		return Promise.reject("File not loaded");
	}
}

loadFile.then(value => console.log(value), error => console.log(error));
```


The `await` keyword can only be used inside an async function. This pauses the execution until the promise is resolved.

```js
async function renderBackground() {
	var myPromise = new Promise ((resolve, reject) => {
		var fileLoaded = isFileLoaded();
		
		if(fileLoaded) {
			resolve("File loaded");
		} else {
			reject("Failed to load");
		}
	});

	parseFile(await myPromise);
}

renderBackground().then(() => pass).catch(() => console.log("Failed to load bg!"));
```

The parseFile function will be invoked only when the file is loaded.



## Modules

To work with them, make sure to set the script's type to "module".

```html
.
.
		<script type="module" src="index.js"></script>
.
.
```

Inside a JS script, we can write code for using it in another scripts. For letting another scripts to use some of the functions and values of our module, we use the `export` keyword.

```js
export const e = 2.71828;

export function exp(num) {
	Math.pow(e, num);
}

function phasorStr(r, th) {
	return "r < th";
}
```

For importing modules to a script use `import` and curly brackets to specify the properties to import.
If the module is in the same folder (relative file) use `"./"` or indicate the path in case it's not.
We can use `*` to import everything.


```js
import {e, exp} from "./complexUtil.js"
import * from "./complexUtil.js"

console.log(exp(e));
```

We can also add a namespace for use the elements of the module.

```js
import * as complex from "./complexUtil.js"

console.log(complex.exp(complex.e));
```



## External Links

- [Using JS for Web Applications](Using%20JS%20for%20Web%20Applications.md)
- [JS libraries](JS%20libraries.md)
- [Server communication](Server%20communication.md)