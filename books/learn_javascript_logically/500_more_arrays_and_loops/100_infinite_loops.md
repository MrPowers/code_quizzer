# Infinite Loops

Infinite loops are loops that run forever because the boolean condition never returns false.  Here is an example of an infinite loop (if you run this in your browser, the brower might freeze and you might have to quit it).

```javascript
while (5 === 5) {
  console.log("this never ends");
}
```

The boolean condition always returns true (5 === 5), so this loop will run infinitely.

Compare the infinite loop to a loop that will terminate:

```javascript
var x = 0;
while (x < 3) {
  console.log("this ends!");
  x++;
}
```

In this loop, the counter variable (x) will eventually be greater than 3, so the loop will termainate.

If we forget to increment the counter variable, we will create an infinite loop.  Here is another example of an infinite loop:

```javascript
var x = 0;
while (x < 3) {
  console.log("on and on");
}
```

The counter variable (x) is always assigned to 0 so it is never greater than 3.  This loop will continue forever.

