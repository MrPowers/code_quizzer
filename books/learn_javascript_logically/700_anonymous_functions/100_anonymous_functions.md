# Anonymous Functions

We've already see examples of named functions, like the following nailPolish() function.

```javascript
function nailPolish() {
  return("i so pretty");
}
```

The name of named function is between the function keyword and ().

JavaScript also has functions without names and these are called anonymous functions.

```javascript
var toothbrush = function() {
  return("i like cleaning");
}
```

The variable toothbrush is assigned to a function without a name.  There isn't a name between the function keyword and () so you can tell the function is anonymous.

Here is an example of an anonymous function that takes two arguments.

```javascript
var adder = function(a, b, c) {
  return(a + b + c);
}
var result = adder(1, 2, 5);
console.log(result);
```

The variable adder is assigned to a function that does not have a name (an anoymous function).  The anonyous function is invoked with the arguments 1, 2, and 5 and retuns the value 8.

Named functions and anonymous functions are used extensively in JavaScript and you must be familiar with them both.

