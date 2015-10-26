# While Loops

While loops execute until the boolean condition evaluates to false (i.e. while loops continue executing when the boolean condition evaluates to true).

Here is an example of a while loop:

```javascript
var counter = 0;
while (counter < 2) {
  console.log("The counter is " + counter);
  counter = counter + 1;
}
```

This loop prints the following strings to the console:

<pre>
The counter is 0
The counter is 1
</pre>

Let's walk through every step of this loop:

```javascript
var counter = 0; // counter is assigned to 0

// first loop
counter < 2; // true, so the body of the loop is executed
console.log("The counter is " + counter); // prints "The counter is 0" to the console
counter = counter + 1; // counter is reassigned to 1

// second loop
counter < 2; // true because counter is assigned to 1
console.log("The counter is " + counter); // prints "The counter is 1" to the console
counter = counter + 1; // counter is reassigned to 2

// third loop
counter < 2; // false because counter is assigned to 2
// since the boolean condition is false, the loop body isn't executed again
```

Here is another example that is very similar.

```javascript
var i = 5;
while (i < 8) {
  console.log("The variable i is " + i);
  i++; // shorthand notation for i = i + 1
}
```

This code prints the following strings to the console:

<pre>
The variable i is 5
The variable i is 6
The variable i is 7
</pre>

The counter variable in loops is often i and the i++ shorthand notation is frequently used to increment the variable.  i++ and i = i + 1 are equivalent statements.

```javascript
var x = 0;
x++;
console.log(x); // 1

var y = 0;
y = y + 1;
console.log(y); // 1
```

