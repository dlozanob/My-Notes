# CSS

Stands for Cascading Style Sheet.

In order to add a CSS script to the main code use the following in the head tag of the html document:

```html
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="style.css">

		<style>
			/*Everything inside here also works for adding css code*/
		</style>

	</head>
	<body>
	</body>
</html>
```

Another option to run CSS code is by implementing it directly in the html document using the `<style>` tag.

It's also possible to use inline CSS code into HTML tags with the `style` keyword.

```html
<section style="background-color: red;"> </section>
```


>[!Note]
>Use `/* */` for comments



## The CSS structure

Is composed by definition blocks which define style properties of the html elements

```css
p {
	color: blue;
}
```

In this case the element `<p>` is the _selector_, `color` is the _property_ and `blue` is it's _value_.
A definition block may has many selectors as well as many properties

```css
p, h1 {
	color: blue;
	text-align: center;
}
```

So in this case all `p` and `h1` elements will have those properties.

In order to select all the elements in the document use the _star selector_ `*`.

For define class properties use `.className`, and for id's use `#idName`:

```css
.menu {
	color: red;
	border: solid black 1px;
}

#desserts {
	color: yellow;
	background-color: blueviolet;
}
```

So every element with the _desserts_ id will have the color property set yellow, as well as every element from the _menu_ class will have the color property set red.

Setting values to classes or id's attached to certain elements can be done by defining _personalized selectors_:

```css
p.big {
	font-size: 20px;
}

div#small {
	margin: 5px;
}
```

In order to set values to elements that are only within certain tags use _descendant selectors_:

```css
article p {
	color: blue;
}
```

Only `p` elements inside `article` elements are affected.

To set values to elements whose first order parent tag is an specified one use _child selectors_:

```css
article > p {
	color: blue;
}
```

So only `p` elements whose first order parent tag is an `article` element will have that property.


Since it's possible to add more than one class or id to an element (`class="menu frame"`), we can create a selector that only works for elements that belongs from both those classes:

```css
.menu .frame {
	color: red;
	background-color: black;
}
```


For selecting all siblings next to an element use _general sibling selectors_:

```css
div ~ p {
	background-color: blueviolet;
}
```

In this case all `<p>` elements after a `<div>` element which are siblings will be selected.


For selecting the first sibling element after some tag use _adjacent sibling selectors_:

```css
div + p {
	background-color: blueviolet;
}
```

It selects the first `<p>` tag placed after a sibling `<div>` element.


### Attribute selectors

Selectors based on the html attributes of the elements and their values.

- `[attribute]` : Every element with that attribute
- `[attribute="value"]` : Every element with that value set to that attribute
- `[attribute~="value"]` : The string value contains the `"value"` word (no adjacent characters just spaces or nothing)
- `[attribute|="value"]` : The string value is exactly the `"value"` word or have it followed by a hyphen (no matters what's next that hyphen)
- `[attribute^="value"]` : The string value must start with the `"value"` word
- `[attribute$="value"]` : The string value must end with the `"value"` word
- `[attribute*="value"]` : The string value must contain the `"value"` word

>[!Note]
>This selectors are case-sensitive

Some examples:

```css
[target] {
	text-decoration: none;
}

a[href] {
	vertical-align: super;
}

button[click]:active {
	background-color: #4d526f
}

[class="meineKlasse"] {
	font-variant: small-case;
}

/*Matches: "ice", "ice cream", "smooth ice"*/
[title~="ice"] {
	opacity: 0.8;
}

/*Matches: "main", "main-", "main-dish"*/
[class|="main"] {
	float: right;
}

/*Matches: "superSpecialDish", "super", "super container"*/
[class^="super"] {
	font-size: xx-large;
}

/*Matches: "cake", "chocolate cake", "lemon_cake"*/
[class$="cake"] {
	background: url('awesomeImg.gif');
}

/*Matches: "schützen", "enable", "final arena"*/
[id*="en"] {
	font-style: oblique;
}
```



## Pseudo-classes

Some html elements have different states or sub-elements, so we can set a style to each of them.

- `<any tag>` :
	- `hover` : Mouse over
	- `first-child` : Matches the first tag of any element
	- `lang()` : Match any element with a defined language

```css
div:lang(de) {
	font-size: 25px;
}
```

- `<a>` :
	- `link` : Unvisited link
	- `visited` : Visited link
	- `hover` : Mouse over link
	- `active` : Link when click

```css
a:link {
    color:chocolate;
    font-size: 25px;
}

a:visited {
    color:green;
    font-size: 10px;
}
```


- `<button>`:
	- `hover` : When hover
	- `active` : When pressed

- `<li>` : 
	- `first-child`
	-  `last-child`
	 - `nth-child()` : Apply values to specified element(s) of the list


```css
/*Applies for the 3rd child element*/
li:nth-child(3) {
	color: green;
}

/*For odd or even elements*/
li:nth-child(even) {
	color: black;
}
li:nth-child(odd) {
	color: white;
}

```

- `<input>` :
	- `hover` : When mouse over
	- `focus` : When input is selected

- `<tr>` :
	- `hover` : When hover
	- `first-child`
	- `last-child`
	- `nth-child()` : Apply values to specified element(s) of the table


For a responsive table use:

```html
<div style="overflow-x:auto;">  
  
<table>  
... table content ...  
</table>  
  
</div>
```


>[!Note]
>- In order to be effective, the definition order must be _link_ and _visited_, _hover_, _active_
>- Pseudo-classes are not case-sensitive



## Pseudo-elements

Used to style certain parts of an element.

- `first-line` : First line of a text
- `first-letter` : First letter of a text
- `before` : Insert content before an element
- `after` : Insert content after an element
- `marker` : Select the marker of list items
- `selection` : Matches the portion selected with the cursor by a user

```css
p::first-letter {
	color: red;
	font-size: 25px;
}

p::first-line {
	color: green;
	text-indent: 15px;
	font-style: italic;
}

div::before {
	content: url(img.gif);
}

div::after {
	content: url(img.gif);
}

::marker {
	color: blue;
	font-size: 5px;
}

::selection {
    background-color: #ff6347;
    color: blue;
    cursor:copy;
}
```


>[!Note]
>- `first-line` and `first-letter` work only to block-level elements ([look at](###The+display+property)).
>- `selection` works only with the style properties: _background_, _color_, _cursor_ and _outline_



## Specificity

What style property will rule over an element if different values were given to it within different selectors?

| Selector | Score |
|-|-|
| Inline styles | 1000 |
| ID's | 100 |
|Classes, pseudo-classes, attribute-selectors | 10 |
| Elements and pseudo elements | 1 |
| Star selector ($\ast$) | 0 |

So the hierarchy follows the table rule, however, when working with combined selectors, the score system is applied so every element involved adds up it's own score.

```css
/*Score: 0*/
* {
	color: white;
}

/*Score: 1 + 10 = 11*/
p.select {
	color: red;
}

/*Score: 1*/
p:hover {
	color: yellow;
}

/*Score: 1 + 10 + 100 = 111. WINNER*/
p.select #item {
	color: blue;
}

/*Score: 1 + 100 = 101*/
p#item {
	color: green;
}
```

Then `<p class="select" id="item">` will be yellow. Now suppose the HTML document looks like this:

```html
<p class="select" id="item" style="color: black">Hallo Welt!</p>
```

This is an inline style (score: 1000), then the text color will be black.

In case of draw, the latest element will set the property. Also, if draw in both HTML documents and CSS, like the follow example:


```css
div {
	color: blue;
}
```

```html
<style>
	div {
		color: blueviolet;
	}
</style>
```

The _style_ tag sets the property.



### !important


The `!important` keyword gives the ultimate importance of a CSS property. It overrides all the hierarchy score system of another selectors.

```css
span .menu {
	color: yellow;
}

#fish {
	color: red;
}

span {
	color: blue !important;
}
```

Here the blue color will rule over the `<span class="menu" id="fish">Text</span>` element.



## CSS units


### Absolute lengths


- _cm_ : Centimeters

- _mm_ : Millimiters

- _in_ : Inches

- _px_ : Pixels. In low-dpi devices 1px is equivalent to 1px of the display, while in high-dpi devices, 1px is equivalent to multiple pixels of the display. _1px_ = 1/96 in

- _pt_ : Points. _1pt_ = 1/72 in

- _pc_ : Picas. _1pc_ = 1/6 in.


### Relative lengths


- _em_ : Relative to the current font-size of the element.

- _ex_ : Relative to the x-height of the current font.

- _ch_ : Relative to the width of the "0" character

- _rem_ : Relative to the root element's size (browser base font-size. 16px)

- _vw_ : _1vw_ = 1% of viewport's width

- _vh_ : _1vh_ = 1% of viewport's height

- _vmin_ : _1vmin_ = 1% of viewport smaller dimension

- _vmax_ : _1vmax_ = 1% of viewport larger dimension

- _%_ : Relative to the current font-size



## Math functions

- `calc()` : Given an expression does an arithmetic operation with any basic operator (+, -, $\ast$, /)

- `max()` : Returns the maximum value form a comma-separated list

- `min()` : Returns the minimum value form a comma-separated list

```css
div.section {
	width: calc(100% - 50px);
	height: max(5vw, 4px);
	font-size: min(2em, 3px, 2%);
}
```



## Style properties

- `content` : Text content of the element. Ex. _"vainilla ice cream"_, _"Put your name:" " "_

- `box-sizing` : Ex. _border-box_

- `box-shadow` : Adds a shadow to an element. The given parameters are: _horizontal shadow_, _vertical shadow_, _blur_, _spread_ , _color_, _inset_ (in that order)

>[!Note]
>- The default color is the text color of the element
>- The _blur_, _spread_, _color_ and _inset_ parameters can be omitted

The _spread_ parameter indicates how big is the shadow, negative values decrease the shadow's size. The _inset_ parameter can be:
	- Omitted (default): The defined shadow is the outset
	- _inset_ :  The defined shadow is now the inner, not the outset


Example:

```css
box-shadow: 25px 20px 5px 15px lightblue inset;
```


Is possible to add multiple shadows:

```css
box-shadow: 5px 5px blue, 10px 10px red, 15px 15px green;
```

- `cursor` : Style the cursor.
	- _auto_  
	- _crosshair_  
	- _default_  
	- _e-resize_  
	- _help_  
	- _move_  
	- _n-resize _
	- _ne-resize_ 
	- _nw-resize_  
	- _pointer_  
	- _progress_  
	- _s-resize_  
	- _se-resize_  
	- _sw-resize_  
	- _text_  
	- _w-resize_  
	- _wait_

- `filter` : Adds a filter over an image given a filter function
	- _blur_ : Ex. _blur(7px)_ 
	- _brightness_ : Ex. _brightness(25%)_
	- _contrast_ : Ex. _contrast(240%)_
	- _grayscale_ : Ex. _grayscale(50%)_
	- _hue-rotate_ : Ex. _hue-rotate(240deg)_
	- _invert_ : Ex. _invert(100%)_
	- _opacity_ : Ex. _opacity(20%)_
	- _saturate_ : Ex. _saturate(9)_
	- _sepia_ : Ex. _sepia(10%)_
	- _drop-shadow_ : Ex. _drop-shadow(5px 5px 2px red)_
	

### Background properties

- `background` : Shorthand background property.
Ex. _#ffffff url("img_tree.png") no-repeat right top_

- `background-color` : Ex. _chocolate_

- `background-image` : Ex. _url("img.png") no-repeat center_

>[!Note]
>By default repeats the image horizontally and vertically

It's possible to add multiple background images by separating them with commas. Also for the `background-repeat` and `background-position` properties.

```css
#myBackground {
	background-image: url('flowers.jpg'), url('nature.gif');
	background-repeat: repeat, no-repeat;
	background-position: top left, bottom right;
}
```


>[!Note]
>Multiple background images can be set as well from the shorthand background property

>[!Note]
>Possible to add a color gradient [Gradients](####Gradients)


- `background-repeat` : Specifies which one to repeat instead of both by default.
	- _repeat-x_
	- _repeat-y_
	- _no-repeat_

- `background-position` : Portion of the background image to be shown.
Ex. _top right_, _bottom left_, _-50px -60px_

- `background-position-x`, `background-position-y` : Specify each axis position individually
Ex. _-50px_

>[!Note]
>Use the `background-position` feature to work with image sprites

- `background-attachment` : Specifies wheter the image should be scrolled with the page or stay fixed. 
	- _scroll_
	- _fixed_

- `background-size` : Size of the image.
	- Specified length. Ex. _350px 200px_ (width, height)
	- _contain_ : The image adjusts it's container in order it's as large as possible, using proportional scaling
	- _cover_ : The image is scaled enough so the container is completely covered by it

- `background-origin` : Specifies where the background image is positioned
	- _border-box_ : Image starts from the upper left corner of the border
	- _padding-box_ : Image starts from the upper left corner of the padding edge (default)
	- _content-box_ : Image starts from the upper left corner of the content

- `background-clip` : Specifies the reach of the background image on it's container
	- _border-box_ : The image contains everything inside the border (default)
	- _padding-box_ : The image contains everything inside the padding
	- _content-box_ : The image contains everything inside the content


### Border properties

- `border` : Shorthand border property. Ex. _3px solid blue_

- `border-style` :
	- _solid_
	- _dotted_
	- _dashed_
	- _double_
	- _groove_
	- _ridge_
	- _inset_
	- _outset_
	- _hidden_
	- _none_

>[!Note]
>For mixed borders use the 4 properties in a row. Ex. _dashed dotted double ridge_ (order: top, right, bottom, left).
>
>It works for the other border properties as well.
>
>Alternatively, it's possible to specify every of the border sides according to the property. Like _border-top_, _border-right-style_, _border-bottom-width_, _border-left-color_. Or also _border-left-top_, etc.

The edges of the border looks like:

![](attachments/Pasted%20image%2020230130125139.png)

So, with the abscence of text, those triangles can be used for style purposes (useful for tooltips).

![](attachments/Pasted%20image%2020230130125257.png)

- `border-width` : Ex. _1px_, _medium_, _thick_

- `border-color` : Ex. _red_

- `border-radius` : Ex. _5px_, _50px / 15px_ (eliptical borders), _50%_ (circle)

- `border-collapse` : Collapse border lines (special for tables)
	- _collapse_
	- _separate_

>[!Note]
>Use border properties over `table`, `th`, `td` elements for setting the border lines


#### Border image

- `border-image` :  Shorthand border image property. The image taken is sliced in 9 parts like a tic-tac-toe and the middle parts are repeated all around the wrapped element.

![](attachments/Pasted%20image%2020230121191136.png)

>[!Note]
>The `border` property must be declarated before using `border-image`

Ex. _border-image: url(border.png) 30 round_ (in that order)

- `border-image-source` : The image to be used as a border. Ex. _url('myFrame.jpg')_

- `border-image-slice` : Portion of each slice. Takes number of pixels or coordinates for raster images and vector images respectively. Ex. _30_, _20 25_, _10%_, _10% 20%_, _40% fill_

	- Percentages _%_ are relative to the width or height of the image
	- _fill_ : The middle part of the image is displayed
	- _initial_ : Default value (_100%_).
	- _inherit_

- `border-image-width` : Border image width. Ex. _10px_

- `border-image-outset` : Specifies how much the border image expands beyond the border box.
   Ex. _2_, _10px_, _20px 15px_

- `border-image-repeat` :
	- _repeat_
	- _round_
	- _space_
	- _stretch_ : Default value


### Margin properties

- `margin` : Shorthand margin property.
Ex. _25px 15px 25px 15px_

- `margin-top`, `margin-bottom`, `margin-right`, `margin-left` : Ex. _25px_

>[!Note]
>The `auto` value horizontally centers the element within it's container.
>
>The `inherit` value makes the element to inherit the margin property from it's container.
>
>When the top and bottom margins of 2 different elements collapse, the resulting space is the size of the largest margin, not the sum of both. It doesn't happen the same with
> left-right margins.


### Padding properties

- `padding` : Shorthand padding property.
Ex. _25px 15px 25px 15px_

- `padding-top`, `padding-bottom`, `padding-right`, `padding-left` : Ex. _25px_


### Dimension properties

- `width` : Ex. _50%_, _15px_, _inherit_, _auto_, _initial_

- `height` : Ex. _50%_, _15px_, _inherit_, _auto_, _initial_

- `max-width` : Width is not fixed, the element takes as much `max-width` but can have a width below that as the window is resized.
  Ex. _500px_

- `min-width` :  Width is not fixed, the element takes as least `min-width` but can have a width above that as the window is resized.
  Ex. _150px_

- `max-height` : If `max-height` is less than the current height, then the height is adjusted to the `max-height` value. Ex. _500px_

- `min-height` : If `min-height` is larger than the current height, then the height is adjusted to the `min-height` value. Ex. _500px_


### Outline properties

>[!Note]
>Outline is drawn outside the border

- `outline` : Shorthand outline property. Ex. _3px solid blue_

- `outline-style` :
	- _solid_
	- _dotted_
	- _dashed_
	- _double_
	- _groove_
	- _ridge_
	- _inset_
	- _outset_
	- _hidden_
	- _none_

- `outline-color` : Ex. _blue_

- `outline-width` : Ex. _1px_, _medium_, _thick_

- `outline-offset` : Space between outline and border. Ex. _15px_


### Text properties

- `color` : Font color. Ex. _blueviolet_, _rgb(180, 50, 220)_, _rgba(180, 50, 220, 0.2)_, _#ff6347_ (hex),
_hsl(9, 100%, 64%)_, _hsla(9, 100%, 64%, 0.5)_

For color theory related information go to [Colors](###Colors).

- `text-align` :
	- _left_
	- _right_
	- _center_
	- _justify_

- `text-align-last` : Align the last line of a text.
	- _left_
	- _right_
	- _center_
	- _justify_

- `direction` : 
	- _ltr_ : Left to right (default)
	- _rtl_ : Right to left

- `unicode-bidi` : 
	- _bidi-override_ : Reverse text

- `vertical-align` :
	- _baseline_ :  Aligns the baseline of the element with the baseline of it's parent
	- _super_ : Aligns the baseline of the element with the superscript-baseline of it's parent
	- _top_ : Aligns the top of the element with the very top
	- _middle_ : Centers the element
	- _bottom_ : Aligns the bottom of the element with the very bottom
	- _sub_ : Aligns the baseline of the element with the subscript-baseline of it's parent
	- _text-top_ : Aligns the top of the element with the top of the parent's font
	- _text-bottom_ : Aligns the bottom of the element with the bottom of the parent's font

- `text-decoration` : Shorthand `text-decoration` property.
Ex. _wavy 5% blue overline_

- `text-decoration-line` : Add a line over the text.
	- _overline_
	- _line-through_
	- _underline_
	- _none_

>[!Note]
>It's possible to combine them


- `text-decoration-color` : Ex. _white_

- `text-decoration-style` :
	- _solid_
	- _dashed_
	- _dotted_
	- _double_
	- _wavy_
	- _none_

- `text-decoration-thickness` : Ex. _4px_, _25%_, _auto_

- `text-transform` :
	- _uppercase_
	- _lowercase_
	- _capitalize_

- `text-indent` : Specify indentation of the first line. Ex. _15px_

- `letter-spacing`  : Space between characters. Ex. _25px_, _-2px_

- `line-height` : Space between lines. Ex. _15px_, _1.8_

- `word-spacing` : Space between words. Ex. _25px_, _-2px_

- `white-space` :
	- _nowrap_ : The text doesn't wrap, means it's all in a single line
	- _normal_ : The text will wrap
	- _pre_ : Takes the same shape as written in the code IDE

- `text-shadow` : Takes _horizontal shadow_, _vertical shadow_, _blur_ and _color_ in that order.
Ex. `text-shadow: 5px 2px 5px blue`

It's possible to merge many shadows: `text-shadow: 5px 2px 5px blue, 2px 5px 15px red;`

- `text-overflow` : Set how overflowed text should be showed
	- _clip_ : Overflowed text remains hidden (default)
	- _ellipsis_ : A '...' (ellipsis) is added to indicate the text continues

- `word-wrap` : Set how large words that don't fit in a single line of their container are displayed
	- _normal_ : The overflowed word content gets out of the box (default)
	- _break-word_ : The word is broken when not enough space in the line, so it continues in the next line

- `word-break` : Set what happen to words when the line is over
	- _keep-all_ : If there's no more space for the next word in the current line, the word will be displayed entirely in the next one (default)
	- _break-all_ : The line's remaining space will be used to display the next word even if it doesn't fit entirely in that line. So the the remaining word portion will be displayed in the next one.

- `writing-mode` : Text vertical or horizontal orientation
	- _horizontal-tb_ : Displayed horizontal (default)
	- _vertical-lr_ : Displayed vertical


### Font properties

The 5 generic font families:

- __Serif__ : Stroke edges. Elegance.
- __Sans-serif__ : Smooth edges. Minimalistic.
- __Monospace__ : Mechanical look.
- __Cursive__ : Handwriting.
- __Fantasy__ : Decorative purposes.

Each of them contain different font names.

- `font` : Shorthand font porperty (use the below order).
Ex. _oblique small-caps bold 25px Helvetica, sans-serif_

- `font-family` : Specify the font(s) name(s) then the font family.
Ex. _"Lucida console", Monaco, monospace_

>[!Note]
>Notice there could be more than one font name, this is because some systems don't support some fonts, therefore, a fallback font is declared in case this happens.
>
>For mobile purposes, _Georgia (serif)_ is suggested.

- `font-style` :
	- _normal_
	- _italic_
	- _oblique_

- `font-weight` :
	- _normal_
	- _bold_

- `font-variant` : Specifies wheter or not the text should be converted to small-caps font.
	- _normal_
	- _small-caps_ : All uppercase, however uppercased letters are in a smaller size.

- `font-size` : Ex. _120%_, _15px_, _2em_ (proportion of size based on the current), _1wv_, _xx-large_

>[!Note]
>The default font size is _16px_ = _1em_
>.
>Viewport (_vw_) is the browser window size _1vw_ = _1%_ of viewport width


### List properties


- `list-style` : Shorthand list property.
Ex. _upper-roman outside url('img.png')_ (in that order)

- `list-style-type` : Type of list item marker-
	- _disc_ (ul, default)
	- _circle_ (ul)
	- _square_ (ul)
	- _upper-roman_ (ol)
	- _lower-alpha_ (ol)
	- _none_

- `list-style-image` : Set an image as the list item marker.
Ex. _url('myMarker.gif')_

- `list-style-position` : Specifies wheter the list markers (bullet points) are in the list space or not.
	- _inside_
	- _outside_



### The display property

- `display` : Specifies how an element is displayed.
  Elements have a default display value.
	
	- _block_ : Block-level elements always start a new line and take as much horizontal space as they can. Some of them: _div_, every _h_, _p_, _form_, _header_ , _footer_,  _section_.   
	- _inline_ : Does not start a new line and takes the enough needed width.
	  Some of them: _span_, _a_, _img_.
	- _none_ : Don't display in the document. Ex. _script_
	- _flex_ : Elements inside stack side by side
	- _inline-block_ : Same as _inline_, but respects top and bottom margins

- `visibility` : Shows an element but the layout remains there
	- _visible_
	- _hidden_

- `opacity` : Takes a number between 0.0 and 1.0. Ex. _0.4_



### Position properties

- `position` : Positioning mode. Values:
	- _static_ :  Default value, positioned according to the normal flow of the document
	- _relative_ : Will be adjusted relative to its _static_ position as 0 coordinates
	- _fixed_ : Stays always in the same screen position. Takes absolute coordinates
	- _absolute_ : Will be adjusted relative to its container position as 0 coordinates
	 However, if the container is _static_, the element takes absolute coordinates
	- _sticky_ : Positioned as _relative_, but scrolling makes the element stick to the screen walls


>[!Note]
>Use `position: -webkit-sticky;` on Safari for sticky elements


>[!Note]
>The `position` property works along with the `top`, `bottom`, `left`, `right` properites, they won't work if the position property is not set (_static_ position by default)

- `top` : Ex. _5px_

- `bottom` : Ex. _5px_

- `left` : Ex. _5px_

- `right` : Ex. _5px_


- `z-index` : Sets the stack order of elements when overlapping
Takes any integer number as argument, the element with the greater `z-index` value will overlap the others.

>[!Note]
>- Works only over elements whose `position` property is not _static_
>- If not set, the last element in the code will overlap the others


- `float` : Specifies in which position of the container the element should float
	- _left_
	- _right_
	- _none_
	- _inherit_

- `clear` : Clears the `float` effect
	- _left_ : The element is pushed below left floated elements
	- _right_ : The element is pushed below right floated elements
	- _none_ : The element is not pushed below left or right floated elements (default)
	- _inherit_ : Inherit clear value from parent container



### The overflow property


- `overflow` : Control what happens to the content when it's too big to fit within it's container
	- _visible_ : The content is rendered anyway so it gets out of the container
	- _hidden_ : The unfit content remains hidden
	- _scroll_ : Add two scrollbars
	- _auto_ : Add scrollbars when necessary

>[!Note]
>Works only over block-level elements ([block-level elements](###The+display+property)) with specified height

- `overflow-x`, `overflow-y` : Overflow properties for each axis individually



### Counter properties

Properties are variables that only can be incremented or reseted.

- `counter-reset` : Creates or reset a counter given it's name.
Ex. _section_

- `counter-increment` : Increments counter value given it's name
Ex. _section_


>[!Note]
>- The `counter(counterName)` returns the _counter's_ value
>- Every counter starts from 0

Example:

```css
body {
	counter-reset: myCounter;
}

h2::before {
	counter-increment: myCounter;
	content: "Section " content(myCounter) ":";
}
```

So every _h2_ header will be displayed like `Section <n>: <content>`.

Notice if we do:

```css
h1 {
	counter-reset: subCounter;
}
```

Every _h1_ will have a counter.



## Transformations

Use the `transform` property and set a function value to perform the transformation.

### 2D transformations

Apply linear transformations to the object in the $R^2$ space.

- __translate()__ : Translates the object to a given position. Ex. _translate(2px, 10px)_
Use __translateX()__ and __translateY()__ for individual dimensions.

- __rotate()__ : Rotate the element given an angle in _deg_'s. Ex. _rotate(45deg)_  (clockwise is default)

- __scale()__ : Scale the object given width and height scaling values. Ex. _scale(2, -0.5)_
Use __scaleX()__ and __scaleY()__ for individual dimensions.

- __skew()__ : Apply a shear transformation to the object. Given 2 angles for each component.
Ex. _skew(25deg, -15deg)_
Use __skewX()__ and __skewY()__ for individual dimensions.

- __matrix()__ : Shorthand property to apply all transformations.
Takes the form: `matrix(scaleX(), skewY(), skewX(), scaleY(), translateX(), translateY())`

Ex. _matrix(-2, 0.2, 0.5, 0.6, 150, -7)_

>[!Note]
>No units given to this function

The transformation matrix looks like:

$$\begin{pmatrix}
scaleX() & skewX() & translateX()\\
skewY() & scaleY() & translateY()\\
0 & 0 & 1
\end{pmatrix}$$


### 3D transformations

Apply linear transformations to the object in the $R^3$ space.

- __rotateX()__ : Rotate the object around the X-axis

- __rotateY()__ : Rotate the object around the Y-axis

- __rotateZ()__ : Rotate the object around the Z-axis

>[!Note]
>Input given in _deg_'s for all rotations


 - __matrix3d()__ : Apply the general transformation matrix to the object

`matrix3d(a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, a4, b4, c4, d4)
`
The transformation matrix looks like:

$$
\begin{pmatrix}
	a1 & a2 & a3 & a4\\
	b1 & b2 & b3 & b4\\
	c1 & c2 & c3 & c4\\
	d1 & d2 & d3 & d4
\end{pmatrix}
$$



## Transitions

Are simple animations with two stages.

- `transition` : Given a property and a duration time, sets a transition to an object
Shorthand transition property.

In the following example, the element will take 2 seconds to have a 300px's width from it's default when hover.

```css
div {
  width: 100px;
  height: 100px;
  background: red;
  transition: width 2s ease-in-out 1s;
}

div:hover {
  width: 300px;
}
```

It's also possible to change set transitions for multiple values at once:

```css
div {
  width: 100px;
  height: 100px;
  background: red;
  transition: width 2s, height 1s;
}

div:hover {
  width: 300px;
  height: 250px;
}
```

- `transition-property` : Property over the transition acts

- `transition-duration` : Given in seconds (_s_)

- `transition-timing-function` : Specifies the speed curve of the transition
	- _ease_ : Slow start and end, mid-time is constant and fast
	- _linear_ : Constant speed
	- _ease-in_ : Slow start
	- _ease-out_ : Slow end
	- _ease-in-out_ : Slow start and end, mid-time is constant
	- _cubic-bezier(n,n,n,n)_ : Defines a cubic Bézier curve [Bézier curves](###Bézier+curves)

![](attachments/speedCurve%201.gif)


- `transition-delay` : Defines a delay before starting the transition. Ex. _1s_



## Animations


The `@keyframes` rule defines the animation given a name and the corresponding properties to each stage. Stages can be defined with the _from_ and _to_ keywords for start and end stages respectively, or using percenteages meaning the animation progress.

For instance:

```css
@keyframes animationName {
	from {left: 0; background-color: blue;}
	to {left: 500px; background-color: blueviolet; transform: scale(2);}
}

@keyframes myAnimation {
	0% {transform: rotate(15deg);}
	25% {transform: rotate(30deg);}
	50% {transform: rotate(45deg);}
	75% {transform: rotate(60deg);}
	100% {transform: rotate(75deg);}
}
```

- `animation` : Shorthand animation property.

Definition template:
`animation: name duration timing-function delay iteration-count direction`

```css
#animatedObj {
	width: 250px;
	height: 100px;
	background-color: lightblue;
	animation: myAnimation 2s ease-in 0.5s infinite alternate;
}
```

- `animation-name` : Use it to attach animations to objects

- `animation-duration` : Given in seconds (_s_). Ex. _5s_

- `animation-delay` : Time before the animation starts. Ex. _2s_

>[!Note]
>Giving a negative value for delay, makes the animation starts from the transcurred events at that time

- `animation-iteration-count` : Animation run times. Use _infinite_ to run it forever

- `animation-direction` : Animation event order
	- _normal_ : The events happen in the normal flow (default)
	- _reverse_ : The events happen backwards
	- _alternate_ : The first and odd cycles are _normal_, even ones have _reverse_ direction
	- _alternate-reverse_ : First and odd cycles have _reverse_ direction, even ones are _normal_

- `animation-timing-function` : Sets the animation speed curve
	- _ease_ : Slow start and end, mid-time is constant and fast
	- _linear_ : Constant speed
	- _ease-in_ : Slow start
	- _ease-out_ : Slow end
	- _ease-in-out_ : Slow start and end, mid-time is constant
	- _cubic-bezier(n,n,n,n)_ : Defines a cubic Bézier curve [Bézier curves](###Bézier+curves)

- `animation-fill-mode` : Effect of the style properties set in the animation definition over the elements, before or after running the animation
	- _none_ : Before and after the animation, the element properties will be the ones set out of the animation definition (default)
	- _forwards_ : The object will remain the style values set in the last keyframe once the animation is over
	- _backwards_ : While in a delay time (before animation), the object will have the style values of the first keyframe
	- _both_ : _forwards_ and _backwards_ effects are active




## Google Fonts

For adding Google fonts add the external stylesheet in the html code:

```html
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
```

Look for Google fonts in [External Links](##external+Links).

Use the template link: `https://fonts.googleapis.com/css?`. 
Add a font family with `family=`. For effects use `effect=`. Add properties with `&`. If a name contains a space use `+`. For request multiple values use `|`.

```html
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia|Work+Sans&effect=fire">
```

Set the loaded font in the CSS file:

```css
article {
	font-family: 'Work Sans';
}
```

For setting effects attach to the element a class whose name is `font-effect-` + _effect name_.

```html
<p class="font-effect-fire-animation">This is a cool text!</p>
```


Some available Google Font effects:

- _anaglyph_
- _emboss_
- _fire_
- _fire-animation_
- _neon_
- _outline_
- _shadow-multiple_
- _3d_
- _3d-float_


>[!Note]
>Suggested font combinations:
>- Georgia & Verdana
>- Helvetica & Garamond
>- Merriweather & Open Sans
>- Ubuntu & Lora
>- Abril Fatface & Poppins
>- Cinzel & Fauna One
>- Fjalla One & Libre Baskerville
>- Space Mono & Muli
>- Spectral & Rubik
>- Oswald & Noto Sans



## Import fonts from files

Web-safe fonts are available in all devices, but in case we'd like to use special fonts in our website, a font file could be loaded so the web page runs that font in every devices.

To declare a font use the `@font-face` rule:

```css
@font-face {
	font-family: mySpecialFont;
	src: url(special_font.woff);
}
```

Once the font family is defined, it can be used over any text.

>[!Note]
>Bold, italic or any other font variation must be defined as well using another files and indicating the corresponding properties

```css
@font-face {
	font-family: mySpecialFont;
	src: url(special_font_italic.woff);
	font-style: italic;
}

@font-face {
	font-family: mySpecialFont;
	src: url(special_font_bold.woff);
	font-weight: bold;
}
```



## Icons

Use libraries for add them, such as Google or Font Awesome [External Links](##external+links).

If using Font Awesome Icons be sure to add:

```html
<script src="https://kit.fontawesome.com/464bb7a875.js" crossorigin="anonymous"></script>
```

Then choose an icon and see the available posibilities for size, animate, and style it.



## Media queries

In order to make web pages responsive we use media queries.

While satisfying certain style condition CSS code is executed. Use `max-` and `min-` `width` or `height` to attach limits. Also use `and` and `or` logical operators if necessary.

```css
@media(max-width:767px) {
	p {
		color: blue;
	}
}

@media(max-width:600px) and (min-width:300px) {
	div {
		font-size: 15px;
	}
}
```



## Annexes


### Clearfix hack


![](attachments/Pasted%20image%2020230119020915.png)


![](attachments/Pasted%20image%2020230119020930.png)

```css
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
```



### Colors


#### Color systems

Since RGB values vary from 0 to 255, the _hex_ property sets it's values in hexadecimal pair of numbers so:
$\#$rrggbb.

The _hsla_ model stands for Hue-Saturation-Lightness-Alpha.
The _hue_ property represents a degree from the color wheel: 0 is red, 120 is green and 240 is blue.
In color theory, _saturation_ describes color intensity, so a totally satured color is totally colorful, but a desatured color is gray.
Both _saturation_ and _lightness_ are defined in percenteage.
The _alpha_ property is the transparency of the color, varying from 0.0 to 1.0.


#### Color keywords

The _transparent_ keyword makes a color transparent. It's the equivalent as setting `opacity` to 0.

The _currentcolor_ keyword is the current value of the `color` property, so setting this to any other property that involves color, like `background-color`, will make it to have the same value of the `color` property.


#### Gradients


- __Linear__ : `linear-gradient(direction, color-1, color-2, ..., color-n)`

The gradient starts from a `color-1` to a `color-n` in a set direction.
The direction could be a keyword, a combination of them, a turning portion of the 360°, or a degree.

| Keyword | Turning portion | Angle | 
|-|-|-|
| _to top_ | .0turn | _0deg_ |
| _to right_ | .25turn | _90deg_ |
| _to bottom_ (default) | .5turn | _180deg_ |
| _to left_ | .75turn | _270deg_ |

Example of combination of keywords: _to bottom left_.

It's possible to determine the portion length of a color that takes place in the gradient.

```css
background-image: linear-gradient(0deg, blue, green 50% 90%, red);
```

![](attachments/Pasted%20image%2020230128204815.png)

As seen in the result image, the gradient starts from bottom to top, at 50% of the path to 90%, the color is totally green. If the second percenteage (90% in this case) is omitted, the green color will start anyway at 50% but the green's length will be the same as the red's.

```css
background-image: linear-gradient(to top, blue, green 50%, red);
```


Another use of percenteages is determining the mid-color position between a gradient. For instance:

```css
background-image: linear-gradient(45deg, red, 70%, blue);
```

In this example, the mid-color of the gradient between red and blue will take place at the 70% of the gradient path.

>[!Note]
>Instead of using percenteages is possible to use _px_'s as well


The `repeating-linear-gradient()` function works as the original one with a slight difference.
This takes the original gradient and replicates it along the gradient's path.

```css
background-image: repeating-linear-gradient(red, yellow 10%, green 20%);
```

![](attachments/Pasted%20image%2020230128214142.png)

At 10% of the path the color is exactly yellow and at 20% is green. Since it'd be green to 100% of the path (if using the normal function), the `repeating-linear-gradient()` function replicates the pattern the possible amount of times.


- __Radial__ : `radial-gradient(shape or position parameter, color-1, ..., color-n)`

The shape parameter could be simply:
	- _circle_
	- _ellipse_ (default if omitted)

But those keywords always position the center of the gradient at the center of the frame.

The following parametrs adjust the center of the gradient as well as the shape of it based on it's position.
	- _closest-side_ : The border will stop at the closest side
	- _farthest-side_ : The border will stop at the farthest side
	- _closest-corner_ : The border will stop when reaching the closest corner
	- _farthest-corner_ : The border will stop when reaching the farthest corner (default if omitted)

>[!Note]
>The default is `farthest-corner at 50% 50%`


Each of them are followed by the _at_ keyword, which followed by two percenteages or _px_'s indicating the gradient's center position. The first number is the _x_ coordinate (0 at the left side), the second is the _y_ coordinate (0 at the top side). Once the center is adjusted, the previously mentioned keywords set the gradient's shape.

The `repeating-radial-gradient()` works as expected.

Some examples:

```css
background-image: radial-gradient(green, blue, yellow);
background-image: radial-gradient(green, blue 20% 40$, yellow);
background-image: radial-gradient(green, 40$, yellow);
background-image: radial-gradient(circle, green, violet, yellow 80px);
background-image: radial-gradient(closest-corner at 75% 60%, green, blue, yellow);
background-image: repeating-radial-gradient(closest-corner at 75% 60%, green, blue, yellow);
```

The latter looks like:

![](attachments/Pasted%20image%2020230128221525.png)


- __Conic__ : `conic-gradient(position and starting angle, color-1, ..., color-n)`

The gradient sweeps the given colors from a given angle at a given position in the given portions.


General case example:

```css
background-image: conic-gradient(from 45deg at 25% 60%, green 0deg 45deg, blue 60deg, yellow);
```

Output:

![](attachments/Pasted%20image%2020230128222437.png)


The _from_ keyword indicates the starting position of the sweeping (it's clockwise by default), this parameters is _0deg_ by default, with the gradient starting with a line from the center to the top side.

```css
background-image: conic-gradient(from 30deg, green, blue, yellow);
```


The _at_ keyword indicates the position of the gradient's center, so it can be a percenteage of the width and height of the frame or a coordinate given in _px_'s.

```css
background-image: conic-gradient(at 20% 45px, green, blue, yellow);
```


Using numbers after each color, indicates the portion where those colors will take place. For this purpose is suggested to use _deg_'s, but also possible to use percenteages.

```css
background-image: conic-gradient(lightblue 0deg 110deg, blue 120deg 145deg, yellow 160deg 230deg, violet 250deg 300deg, red);

/*SAME AS*/
background-image: conic-gradient(lightblue 110deg, blue 120deg 145deg, yellow 160deg 230deg, violet 250deg 300deg, red);
```

Output:

![](attachments/Pasted%20image%2020230128223440.png)


Use the `repeating-conic-gradient()` function to repeat the pattern of gradients.

```css
background-image: repeating-conic-gradient(lightblue 0deg 10deg, blue 20deg 30deg, yellow 30deg 45deg);
```

Output:

![](attachments/Pasted%20image%2020230128223858.png)


### Bézier curves


Given a set of points, a curve is defined, the first and the last one always are in the curve, the middle ones usually not.

Let's suppose: $B_{P_{0}, P_{1}, ..., P_{m}}(t)^{n}$ is the $n^{nt}$ order Bézier function given a set of points $P := \{P_{0}, P_{1}, ..., P_{n}\}$  

Where the $t$ parameter is a real number so that: $0 \leq t \leq 1$

The linear Bézier curve is defined as:

$B(t) = B_{P_{0}, P{1}}(t)^{1} = P_{0} + t(P_{1} - P_{0})$

Which is equivalent to a linear interpolation, or a line connecting the 2 points.

The quadratic Bézier curve is defined as:

$B(t) = B_{P_{0}, P_{1}, P_{2}}(t)^{2} = B_{P_{0}, P{1}}(t)^{1} + t(B_{P_{1}, P{2}}(t)^{1} - B_{P_{0}, P{1}}(t)^{1})$

So the cubic Bézier function satisfies:

$B(t) = B_{P_{0}, P_{1}, P_{2}}(t)^{2} + t(B_{P_{1}, P_{2}, P_{3}}(t)^{2} - B_{P_{0}, P_{1}, P_{2}}(t)^{2})$


In CSS, the `cubic-bezier(x1, y1, x2, y2)` function defines a cubic Bézier curve, which it's input values are real numbers ($0 \leq t \leq 1$). The curve modelates the progression of the transition versus the time. $P_0$ and $P_{3}$ are always the fixed points (0, 0) and (1, 1), so the input of the function are the $P_{1}$ and $P_{2}$ points, which coordinates are `(x1, y1)` and 
`(x2, y2)` respectively.



## External links

[Google Fonts](https://fonts.google.com/)

[Fonts Documentation](https://developers.google.com/fonts/docs/getting_started)

[Google Icons](https://fonts.google.com/icons)

[Font Awesome Icons](https://fontawesome.com/icons)

[Font Awesome Tutorial](https://fontawesome.com/v6/docs/web/setup/get-started)

[W3Schools](https://www.w3schools.com/css)
