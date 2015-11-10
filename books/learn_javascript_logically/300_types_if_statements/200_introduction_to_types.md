# Introduction to Types
JavaScript includes several *types* of values, but for now we'll focus on the three we learned about in Chapter 1: strings, numbers, and booleans. To recap:

```javascript
console.log("cat"); // prints the string "cat" to the console
console.log(false); // prints the boolean value false to the console
console.log(8.76); // prints the number 8.76 to the console
```

Types are important because they help determine how JavaScript interprets your code. Here's a common example:
```javascript
console.log("cat" + 5); // prints "cat5" to the console
console.log("cat" * 5); // prints NaN (not a number) to the console
```

As you can see, JavaScript does some strange things when you apply a single *operator* (such as `+` or `*`) to two or more different types of *operands* (like `"cat"` and `5`). This is JavaScript's attempt at *type conversion*, and it's a common complaint with the language. Most people think `"cat" + 5` should return an error just like `"cat" * 5`, but it doesn't. The lesson: you need to pay attention to data types.

To check the type of a value in JavaScript, we use the operator typeof(). The typeof() operator can be used to demonstrate that `true` and `false` are boolean values:

```javascript
typeof(true); // "boolean"
typeof(false); // "boolean"
```

We can also use typeof() to show that "dmx" is a string, and that integers (such as 8) and floats (such as 9.99) are numbers:

```javascript
typeof("dmx"); // "string"
typeof(8); // "number"
typeof(9.99); // "number"
```

In the expressions above, typeof() is the operator; true, false, "dmx", 8, and 9.99 are all operands.

Numbers, strings, and booleans are known as the *primary* data types, and for good reason. Get to know them well. The other data types you'll learn about later, including objects and arrays, depend on a solid understanding of these first three.
