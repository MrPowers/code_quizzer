# Introduction to Booleans

JavaScript has two boolean values: true and false.

```javascript
console.log(true); // prints the boolean value true to the console
console.log(false); // prints the boolean value false to the console
```

Boolean conditions are statements that return true or false (i.e. statements that return boolean values).  Here is an example of a boolean condition that returns true:

```javascript
Boolean(2 < 5); // true
```

The same boolean condition can be written with this shorthand notation:

```javascript
2 < 5; // true
```

Boolean conditions can also return false:

```javascript
Boolean(2 > 5); // false
2 > 5; // false
```

Booleans conditions can be used to see if two numbers are the same:

```javascript
console.log(44 === 44); // true because the numbers are equal
```

Boolean conditions can be used to assess if two strings are the same:

```javascript
console.log("bob" === "sam"); // false
```

The string "bob" is different from the string "sam", so the boolean condition returns false.  The boolean condition returns true if the strings are the same:

```javascript
console.log("aaa" === "aaa"); // true
```

