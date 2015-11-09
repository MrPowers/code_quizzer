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

If the boolean condition evaluates to true, then the code block associated with the if statement will be executed. If the boolean condition evaluates to false, the code block associated with the else statement will be executed instead.

In the following example, the boolean condition evaluates to true, so the code block associated with the if keyword is executed:

```javascript
if ("a" === "a") {
  console.log("one direction <3");
} else {
  console.log("lfo");
}
```

The string "one direction <3" will be printed to the console. The code associated with the else keyword — `console.log("lfo")` — is not executed.

In this next example, the boolean condition evaluates false, so the code associated with the else clause is executed (and the code associated with the if clause is not executed):

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

The boolean condition evaluates to false, so the lovePoints variable is reassigned to lovePoints minus 60 (40). The number 40 is then printed to the console.
