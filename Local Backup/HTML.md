# HTML

Every single html document have an `html` tag as well as a `head` tag for defining the title of the page and general settings. The `body` tag contains all the content of the webpage. A simple html template looks like this:

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Here goes the title</title>
		<link rel="stylesheet" href="style.css">
		<script src="js/script.js"></script>
	</head>
	<body>
	
	</body>
</html>
```

Elements are defined by tags which wrap their information, some tags don't require to be closed.

Elements can contain 0 or more attributes, like `class` or `id` for subjectively clasify them. Global attributes are included in most html elements, otherwise, there are some other attributes exclusively for some tags.

```html
<div class="menu">
	.
	.
</div>

<section class="desserts" id="main">
	.
	.
</section>

<button onclick="drink"></button>
```


>[!Note]
>Wrap text with `<!--` and `-->` for turning it into a multilineal comment

>[!Note]
`<meta name="viewport" content="width=device-width, initial-scale=1.0">` is useful for responsive small screen devices



## HTML Character Entity References

Some symbols intentionally put in the code as text will not produce the same symbols in the output. For doing so:

| Symbol | Command |
|-|-|
| < | `&lt;` |
| > | `&gt;` |
| & | `&amp;` |
| &copy; | `&copy;` |
| Non-breaking space | `&nbsp;` |
| " | `&quot;` |
| &euro; | `&euro;` |
| &pound; | `&pound;` |
| &apos; | `&apos;` |



>[!Note]
>`&nbsp;` is used for joining strings with a space in order both stay in the same line



## Global attributes


Every HTML element have them.

- _acesskey_ :  Define a key for activate the element with the keyboard (use _alt_ + `key` in Windows)
Ex. _"s"_

- _autocapitalize_ : Set uppercase to specific characters.
	- _of_ / _none_ : No auto-capitalize
	- _on_ / _sentences_ : Capitalize first letter of each sentence
	- _word_ : Capitalize first letter of each word
	- _characters_ : All uppercase

- _class_ : Element class

- _contenteditable_ : Element editable or not
	- _true_ / _''_
	- _false_

- _dir_ : Text direction
	- _ltr_ : Left to right (default)}
	- _rtl_ : Right to left
	- _auto_ : The algorithm decides wheter to take _ltr_ or _rtl_ according to the characters

- _draggable_ : Element draggable or not
	- _true_
	- _false_

- _hidden_ : Elment visibility
	- _true_
	- _false_

- _id_ : Element ID

- _itemid_ : Unique and global identificator

- _itemprop_ : Property of item
This is just asigning any property to an item (element), like `itemprop="releaseDate"`

- _lang_ : Defines the language

- _spellcheck_ : Defines if the element is checkeable for orthographic errors

- _style_ : Contains CSS property/value pairs

- _title_ : Title of the element



## Semantic tags


- `<h1>` to `<h6>` : Heading
There are different types of headers depending on their importance. A number is introduced in the tag to indicate how important is a header.

>[!Note]
>There's no such a thing like `<h>` or `<h7>` and beyond, they'll produce normal text


- `<header>` : Is the header content of the information. Usually has a logo and the website name

- `<nav>` : Navigation section. Contains link elements

- `<section>` : Usually have a bunch of article elements

- `<article>` : Article block

- `<aside>` : Auxiliary or related information to the main text. They are like notes

- `<footer>` : Contains footer information. Also copyright and contact info.



## Tags

- `<div>` : Division. Starts a line
Any _div_ element has it's own line

- `<span>` : Continue a line
Means it won't produce it's own line, even if nested in another tag


- `<p>` : Paragraph


- `<br>` : Line break. I'ts an empty element, hence there's no closing tag


- `<ul>` : Unordered list


- `<ol>` : Ordered list


- `<li>` : List element
Used within `<ul>` or `<ol>`

```html
<ul>
	<li>Ice cream</li>
	<li>Milkshakes</li>
	<li>Chocolate bars</li>
	<li>Tiramisu pie</li>
</ul>
```


- `<a>` : Link element (anchor)
	- _href_ : Link
	- _title_ : Text when hover
	- _download_ : The linked URL becomes a downloadable file. Without a value, the browser downloads the html code. Can contain a filename value.
	- _target_ : Where to display the linked URL

| _target_ value | Description |
|-|-|
| `_self` | Current tab (default) |
| `_blank` | New tab |
| `_parent` | Parent browsing context |
| `_top` | Topmost browsing context |


>[!Note]
>`_parent`  and `_top` behave as `_self` if there's no parent browsing context


```html
<a href="google.com" target="_blank" title="Go to Google">Click here!</a>
<a href="#desserts">Go to the desserts section</a>
.
.
<div id="#desserts"></div>
```


- `<strong>` : Set text bold

- `<b>` : Another option for bold text

- `<i>` : Set text italic

- `<u>` : Underline text

- `<q>` : Quote

- `<img>` : Display images. No closing tag
	- _src_ : Filename or URL of the image
	- _width_ : Width of the image
	- _height_ : Height of the image
	- _alt_ : Alternative text. Provides a text description of the image in case it failed to load.


- `<table>` : Table element
	- `<tr>` : Table row
	- `<th>` : Table header
	- `<td>` : Table element
		- `colspan` : Columns it takes

Example:

```html
<table>
	<tr>
		<th>Item</th>
		<th>Quantity</th>
		<th>Calories</th>
		<th>Price</th>
	</tr>
	<tr>
		<td>Tiramisu Pie</td>
		<td>10</td>
		<td>200</td>
		<td>5$</td>
	</tr>
	<tr>
		<td>Ice Cream</td>
		<td>50</td>
		<td>20</td>
		<td>15$</td>
	</tr>
	<tr>
		<td>Milkshake</td>
		<td>15</td>
		<td>50</td>
		<td>10$</td>
	</tr>
	<tr>
		<td>Chocolate Cake</td>
		<td>30</td>
		<td>150</td>
		<td>20$</td>
	</tr>
</table>
```

- `<label>` : Text description in an input field
	- _for_ : Associate the `<label>` with a labelable element like `<input>`. Therefore, the _input_ element id must have the same value as the label _for_.

- `<input>` : User's input. No closing tag.
	- _name_
	- _type_
	- _placeholder_

- `<form>` : Wrap user information requests

```html
<form>
	<label for="firstName">First Name</label>
	<input type="text" id="firstName" name="fname" placeholder="Your name here...">
</form>
```

- `<textarea>` : Text area for input

- `<select>` : Dropdown selection box
	- `<option>` : Each of the dropdown options

```html
<select id="country" name="country">
	<option value="ic">Ice Cream</option>
	<option value="cc">Chocolate Cake</option>
	<option value="ms">Milkshake1</option>
</select>
```
