# Obsidian basics

- Linking [[Linked note]].
- Internal links: Look also for [External links](#external+links)
- Tagging #tag 
- *Italic*, also _italic_
- **Bold**, also __bold__
- Headers:
	- # Main header
	- ## 2nd header
	- ### 3rd header
	- #### 4th header
	- ##### 5th header
	- ###### 6th header

- ## Images:

	![anorLondo|450](https://media.vandal.net/i/1088x1088/5-2018/20185251362_1.jpg)
(Notice that the image is resized to 450px)


## External links:
[ObsidianHelp](https://help.obsidian.md/How+to/Format+your+notes)


## Blockquotes:
> Human beings face ever more complex and urgent problems, and their effectiveness in dealing with these problems is a matter that is critical to the stability and continued progress of society. 
   \- Doug Engelbart, 1961


## Inline code:
The `sleep()` command in the C language is used in a microcontroller for entering to the total low power managed mode.


## Code blocks:

```Python
	def factorial(n):
		if(n == 0):
			return 1
		return n*factorial(n - 1)
```


## Task lists:
- [x] First task
- [x] Second task
- [x] Third task
- [ ] Last task


## Tables:

|First header | Second header |
	| --------------- | ----------------- |
	|First content | Second content |
	|Additional content | Additional content |


## Strikethrough:
~~This should appear crossed out. ~~


## Highlighting:
==Higlighted text.==


## Horizontal bars:

___

---

## Footnotes:
Here's a sample footnote[^1].

[^1]: A meaningful footnote


## Math syntaxis:

$$e^{i\theta} = Cos(\theta) + iSin(\theta)$$


## Matrices:

$$\begin{vmatrix}
a & b\\
c & d
\end{vmatrix} = ad - bc$$


## Comments:

%%This comment can't be seen in the reading mode%%


## Callouts:

> [!Info]
 Here's a callout block.

> [!Note]
 Here's another one.

>[!Warning]
>Here's a warning block.


## Diagrams:

Mermaid provides the following diagram types:

-   Flowchart
-   Sequence diagram
-   Class Diagram
-   State Diagram
-   Entity Relationship Diagram
-   User Journey
-   Gantt
-   Pie Chart
-   Requirement Diagram

### Sequence diagram

```mermaid
sequenceDiagram
	Alice->>+John: Hello John, how are you?
	Alice->>+John: John, can you hear me?
	John-->>-Alice: Hi Alice, I can hear you!
	John-->>-Alice: I feel great!	
```

### Flowcharts

Use `graph XX`, the 2 `XX` sets the diagram orientation flow as follows this convention:

| Parameter | Meaning |
| ---------- | ----------- |
| TD | Top-Down |
| LR | Left-Right |
| TB | Top-Bottom |

```mermaid
graph TD

Biology --> Chemistry
```

```mermaid
graph LR
A[Square Rect] -- Link text --> B((Circle))
A --> C(Round Rect)
B --> D{Rhombus}
C --> D
```


### Gantt diagrams

```mermaid
gantt
dateFormat
YYYY-MM-DD
title My project planning schedule

section section1
w1 :done, w1, 2022-11-01, 2022-11-06
w2 :done, w2, after w1, 2d
w3 :done, w3, after w2, 2022-11-23
m1 :milestone, m1, 2022-11-23 , 0d
w4 :active, w4, after w2, 2022-11-27
w5 :w5, after w4, 3d 
w6 :w6, after w5, 2d 

section section2
c1 :c1, 2023-01-16, 2023-01-28 

section section3
dp1 :active, dp1, 2022-11-01, 2022-11-25 
dp2 :dp2, after w6, 2022-12-23
dp3 :dp3, 2023-01-16, 2023-03-31 
m2 :milestone, m2, 2023-03-31, 0d 
dp4 :active, dp4, 2022-11-01, 2023-03-31

section section4 
md1 :md1, 2023-03-01, 2023-03-31

```



>[!info]
>Mardown supports LaTex commands by wrapping them with `$$`


