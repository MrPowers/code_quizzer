# Introduction to Functions

Functions take inputs, perform computations, and then return an output.  Here is an example of a function that takes two numbers as inputs, adds the numbers, and then returns the sum.

```javascript
function add(x, y) {
  return(x + y);
}
```

After a function is defined, it can be invoked to execute the code and get a return value.

```javascript
console.log(add(3, 4)); // 7
```

This is an example of a function that takes a firstName and lastName as inputs, concatenates the strings into a single string, and returns the full name as output.

```javascript
function fullName(firstName, lastName) {
  return(firstName + ' ' + lastName);
}
```

Here is how the function can be invoked with the "Matt" and "Powers" arguments:

```javascript
fullName("Matt", "Powers"); // "Matt Powers"
```

The following example has comments to explain all the new function jargon.

```javascript
function silly(x) {
  return(x + 'is silly!');
} // function named silly is defined
silly("dave"); // the silly function is invoked with the argument "dave"
```

To summarize:

    - functions can take zero, one, or more input values
    - functions peform computations
    - functions return a single value

