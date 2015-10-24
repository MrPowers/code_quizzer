# Infinity and NaN

Infinity is greater than any number in JavaScript.

```javascript
Infinity > 99999999; // true
```

Negative Infinity is smaller than any number.

```javascript
-Infinity < 88888888; // true
```

Division by zero surprisingly returns Infinity (not undefined):

```javascript
10 / 0; // Infinity
```

Infinity is a number:

```javascript
typeof(Infinity); // "number"
```

NaN is another special number value that stands for "Not a Number".  Mathematical operations with any number and NaN will result in NaN.

```javascript
NaN + 8; // NaN
NaN / 7; // NaN
7 - NaN; // NaN
```

The JavaScript Number() function can be used to view how the language will convert something to a number.

```javascript
Number("cat"); // NaN
Number("67"); // 67
Number(4.3); // 4.3
```

Multiplying the string "cat" by the integer 55 results in NaN.

```javascript
"cat" * 55; // NaN
// equivalent to
NaN * 55; // NaN
```

"cat" is converted to NaN (Number("cat")) and any mathematical operation with NaN returns NaN.

Dividing 4 by the string "dog" also results in NaN.

```javascript
4 / "dog"; // NaN
```

"dog" is converted to NaN and 4 divided by NaN returns NaN.

Surprisingly, dividing true by 5 results in the number 0.2.

```javascript
true / 5; // 0.2
```

JavaScript converts true to 1 before performing the division, so the result is numerical.

Type conversion is difficult... keep practicing, you'll get used to it.

