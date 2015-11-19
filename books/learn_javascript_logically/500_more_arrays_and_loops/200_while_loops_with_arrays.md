# While Loops With Arrays

`While` loops can be used to iterate over every element in an array:

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
console.log(sum); // 90
```

The result 90 is printed to the console because 10 + 30 + 50 = 90. Let's look at how the loop accomplishes this in three steps:

Loop 1: sum = 0 + 10 = 10;
Loop 2: sum = 10 + 30 = 40;
Loop 3: sum = 40 + 50 = 90;

On the first loop, the code takes the variable `sum` (0) and adds the first element of the array, `numbers[0]` (10).  In the first loop, the variable sum receives the new value 0 (current value of sum) + 10 = 10.  This is repeated for loops two (sum = 10 + 30 = 40) and three (sum = 40 + 50 = 90).  By the time the loop ends, the new value of sum is 90.  This is what's printed to the console. 
