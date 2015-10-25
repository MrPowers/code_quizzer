# Variable Scope

Variables defined within a function are only accessible within that function.  The following code will raise an error.

```javascript
function nothing() {
  var y = 24;
  return(y);
}
nothing() // this works because the nothing() function can access the y variable
console.log(y) // this raises and error because the y variable cannot be accessed outside the nothing() function
```

The y variable is accessible within the nothing() function, but access to this variable is lost once the function is over.

Variables defined before the function are accessible within the function.

```javascript
var greatBand = "Backstreet";
function important() {
  return(greatBand + " Boys");
}
console.log(important()); // "Backstreet Boys"
```

The greatBand variable is defined before the important() function and is accessible within the important() function.

The greatBand variable is still available after the function definition and invocation:

```javascript
console.log(greatBand); // "Backstreet"
```

In summary, variables defined outside functions are accessible both inside and outside of functions.  Variables that are defined within a function are only accessible within that function.

