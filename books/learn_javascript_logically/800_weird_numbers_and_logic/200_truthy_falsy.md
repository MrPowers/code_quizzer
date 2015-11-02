# Truthy and Falsy

When JavaScript encounters an element that is not true or false in a boolean context, it converts the elements to either true or false.

```javascript
if ("hey") {
  console.log("The string 'hey' is true in a Boolean context");
}
```

The string "hey" is considered true in a boolean context.  The empty string is considered false in a boolean context:

```javascript
if ("") {
  console.log("This is not printed");
}
```

When an element is considered true in a boolean context, it is considered truthy.  When an element is considered false in a boolean context, it is called falsy.

The Boolean() function can be used to see which elements are truthy and falsy.

```javascript
Boolean("hey"); // true
Boolean(""); // false
Boolean(42); // true
Boolean(false); // false
Boolean(undefined); // false
```

There are only 6 values that are falsy and every other value is truthy.  Here's a list of all the falsy values.

```javascript
Boolean(undefined); // false
Boolean(NaN); // false
Boolean(null); // false
Boolean(0); // false
Boolean(""); // false
Boolean(false); // false
```

Here is a simple function that returns a string explaining if a value is truthy or falsy.

```javascript
function booleanTruthiness (e) {
  var type = typeof(e);
  var bool = Boolean(e);
  return("The element " + e + " is a " + type + " and is " + bool + " in a boolean context" )
}
```

Here is an example of the booleanTruthiness() function in action.

```javascript
booleanTruthiness("hi"); // "The element hi is a string and is true in a boolean context"
booleanTruthiness(false); // "The element false is a boolean and is false in a boolean context"
```

The following for loop demonstrates the truthiness of several elements in a boolean context.

```javascript
var stuff = [true, 99, "tree", undefined, [1, 2]]
for (var i = 0; i < stuff.length; i++) {
  console.log(booleanTruthiness(stuff[i]));
}
```

The for loop generates this output:

<pre>
The element true is a boolean and is true in a boolean context
The element 99 is a number and is true in a boolean context
The element tree is a string and is true in a boolean context
The element undefined is a undefined and is false in a boolean context
The element 1,2 is a object and is true in a boolean context
</pre>

while loops continue iterating until the value is falsy in a boolean context.

```javascript
var lol = "haha";
while (lol) {
  console.log("so funny!");
  lol = undefined;
}
```

The while loop will iterate once because the lol variable is set to "haha", which is truthy.  After the first iteration, the lol variable is reassigned to undefined, which is falsy.  The loop exits before the second iteration.

