# Infinity and NaN
Infinity and NaN are two important values for JavaScript's (sometimes confusing) type conversion.

##Infinity
In JavaScript, Infinity is of the type number:

```javascript
typeof(Infinity); // "number"
```

Infinity is greater than any number in JavaScript.

```javascript
Infinity > 99999999; // true
```

Negative Infinity is smaller than any number.

```javascript
-Infinity < 88888888; // true
```

One wrinkle: division by zero surprisingly returns Infinity (not undefined).

```javascript
10 / 0; // Infinity
```

##NaN ("Not a Number")
NaN is another special number value that stands for "Not a Number".  What does JavaScript consider a number?  Answer: more than you think.  The JavaScript Number() function can be used to view how the language will convert something to a number.

```javascript
Number("cat"); // NaN
Number("67"); // 67
Number(4.3); // 4.3
Number(false); // 0
```

Note in that a string of alpha characters (`"cat"`) returns NaN, but that a string of numeric characters (`"67"`) is converted to the number `67`.  Also note that the boolean `false` converts to the number 0 (`true` converts to the number 1).

Most of the time, NaN's behavior is logical.  Mathematical operations between any numbers and NaN will always result in NaN:

```javascript
NaN + 8; // NaN
NaN / 7; // NaN
7 - NaN; // NaN
```

When you attempt to multiply or divide combinations of strings and numbers, NaN is the result.  

```javascript
"cat" * 55; // NaN
// equivalent to
NaN * 55; // NaN
```

It makes sense that multiplying the string "cat" by 55 should return NaN.  How does it work, though?  When JavaScript sees the `*`, it converts "cat" to NaN (using `Number("cat")`).  Recall that any mathematical operation between numbers and NaN returns NaN.

Dividing the number 4 by the string "dog" also results in NaN:

```javascript
4 / "dog"; // NaN
```

The string "dog" is converted to NaN (`Number("dog")`), and `4 / NaN` returns NaN.

However, you should also be aware of JavaScript's weird behavior with NaN and type conversion. Surprisingly, dividing a boolean (`true`) by 5 does NOT result in NaN.

```javascript
true / 5; // 0.2
```

JavaScript converts true to 1 (`Number(true)` returns 1) before performing the division.  The result is numerical: 1 / 5 = 0.2.

In addition (no pun intended), adding strings and numbers does not return NaN.  Rather, the result is a concatenated string:
```Javascript
"slaughterhouse" + 5 // slaughterhouse5
```

Type conversion is difficult... keep practicing, you'll get used to it.
