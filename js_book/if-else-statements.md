# if else statements

When the boolean condition of an if statement evaluates to false, an else clause can be used to specify the behavior of the program.  The following code will print "I am happy" to the console.

```javascript
var weather = "warm";
if (weather === "cold") {
  console.log("so sad");
} else {
  console.log("I am happy");
}
```

If the boolean condition evaluates to true, then the code block associated with the if statement will be executed and the code block associated with the else statement will not be executed.  The boolean condition in the following example is true, so the code block associated with the if keyword is executed.

```javascript
if ("a" === "a") {
  console.log("one direction <3");
} else {
  console.log("lfo");
}
```

The string "one direction <3" will be printed to the console and the code associated with the else keyword is not executed.

The boolean condition is false in the following example, so the code associated with the else clause is executed (and the code associted with the if clause is not executed).

```javascript
var lovePoints = 100;
var heart = "closed";
if (heart === "open") {
  lovePoints = lovePoints + 1000;
} else {
  lovePoints = lovePoints - 60;
}
console.log(lovePoints);
```

The boolean condition evaluates to false so the lovePoints variable is reassigned to lovePoints minus 60 (40).  40 is then printed to the console.

