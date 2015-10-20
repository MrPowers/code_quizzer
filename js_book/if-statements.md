# if statements

if statements evaluate a boolean condition and execute code if the boolean condition is true.  The following statement will print "5 equals 5" to the console.

```javascript
if (5 === 5) {
  console.log("5 equals 5");
}
```

The boolean condition is 5 === 5 and it returns true:

```javascript
console.log(5 === 5); // true
```

When the boolean condition is false, the code in the if code block is not executed:

```javascript
if ("blah" === "hi") {
  console.log("this is not printed to the console");
}
```

The string "blah" is not equal to the string "hi", so the boolean condition "blah" === "hi" evaluates to false and the code in the if code block is not executed.

