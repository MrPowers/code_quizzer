# For Loops

For loops are a convenient way to iterate through an array.

```javascript
var letters = ['a', 'b', 'c'];
for(var i = 0; i < letters.length; i++) {
  console.log("letter: " + letters[i] + ", count: " + i)
}
```

The for loop prints this output to the console:

<pre>
letter: a, count: 0
letter: b, count: 1
letter: c, count: 2
</pre>

The for loop initially sets the counter variable i to 0, tells the loop to iterate while i is less than letters.length, and increments i during each iteration (i++).

Here is another example.

```javascript
var coolCountries = ['vietnam', 'colombia', 'india'];
for(var i = 0; i < coolCountries.length; i++) {
  var love = "I love " + coolCountries[i];
  console.log(love);
}
```

The for loop prints this output to the console:

<pre>
I love vietnam
I love colombia
I love india
</pre>

The for loop initially sets the counter variable i to 0, tells the loop to iterate while i is smaller than coolCountries.length, and increments i during each iteration (i++).

A while loop can be used to do the same thing as a for loop.

```javascript
var coolCountries = ['vietnam', 'colombia', 'india'];
var i = 0;
while(i < coolCountries.length) {
  var love = "I love " + coolCountries[i];
  console.log(love);
  i++;
}
```

A for loop a rearranged version of a while loop.  for loops are used frequently.

