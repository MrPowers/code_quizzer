# While Loops With Arrays

While loops can be used to iterate over every element in an array.

```javascript
var animals = ["cats", "dogs", "sheep"];
var counter = 0;
while (counter < animals.length) {
  console.log("I like " + animals[counter]);
  counter++;
}
```

This loop will print the following strings to the console:

<pre>
I like cats
I like dogs
I like sheep
</pre>

The counter variable is used as the index for the different elements in the animals array.

```javascript
animals[0]; // "cats"
animals[1]; // "dogs"
animals[2]; // "sheep"
```

A while loop can also be used to sum all the elements in an array of numbers.

```javascript
var numbers = [10, 30, 50];
var sum = 0;
var i = 0;
while (i < numbers.length) {
  sum = sum + numbers[i];
  i++;
}
console.log(sum);
```

10 plus 30 plus 50 equals 90, which is the result that is printed to the console.

