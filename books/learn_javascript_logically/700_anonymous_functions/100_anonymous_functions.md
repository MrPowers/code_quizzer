# Anonymous Functions

We've already see examples of named functions, like the following nailPolish() function.

```javascript
function nailPolish() {
  return("i so pretty");
}
```

The syntax for named functions is always `function nameOf()`. Or, if the function takes arguments, `function nameOf(argument1, argument2...)`.

But JavaScript also has functions without names. These are called anonymous functions:

```javascript
var toothbrush = function() {
  return("i like cleaning");
}
```

Note that the `function` keyword is not immediately followed by a name.  Rather, we are assigning the variable `toothbrush` to an *anonymous* function -- a function without a name.  You can tell whether or not a function is anonymous by looking between the function keyword and the parentheses (): If there isn't a name between the function keyword and (), then the function is anonymous.
* Named: `function name() { ...`
* Anonymous: `var newFunction = function() {...`

Anonymous functions can take arguments just like named functions.  Here is an example of an anonymous function that takes two arguments:

```javascript
var adder = function(a, b, c) {
  return(a + b + c);
}
var result = adder(1, 2, 5);
console.log(result); // 8
```

The variable `adder` is assigned to a nameless (a/k/a *anonymous*) function.  The anonymous function is invoked with the arguments 1, 2, and 5 and returns the value 8.

Named functions and anonymous functions are used extensively in JavaScript. For reasons you will see, you must be familiar with them both.
