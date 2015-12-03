# For Loops

For loops are a convenient way to iterate through an array.

```javascript
var letters = ['a', 'b', 'c'];
for(var i = 0; i < letters.length; i++) {
  console.log("letter: " + letters[i] + ", count: " + i)
}
```

The for loop prints the following to the console:

<pre>
letter: a, count: 0
letter: b, count: 1
letter: c, count: 2
</pre>

The syntax of a for loop always looks like this:
for(var = *counter variable* = *counter value*; *counter variable* < *end condition*; *counter variable increments*) {(code to be executed)}

Let's use the example above to see how this works. Here's a breakdown of each component of the for loop:
* `var i = 0` | Sets the *counter variable* i to 0. The loop will begin counting at 0.
* `i < letters.length` | Sets the *end condition* of i to letters.length — in this case, the loop will stop counting at 2.
* `i ++` | Sets the increments for the variable i. Here, we're counting by 1.

All told, the for loop will begin with 0 and count up by 1 until it reaches 2. The code inside the for loop will execute through each *iteration*. We're passing the variable i to the code block each time, which results in a different output. When i = 0, letter[i] is a; when i = 1, letter [i] = b; and so on.


Here is another example:

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

The for loop initially sets the counter variable i to 0, tells the loop to iterate while i is smaller than `coolCountries.length`, and increments i during each iteration (`i++`).

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

A for loop is just a rearranged version of a while loop (and vice versa), though for loops are more common in JavaScript.  You will encounter for loops frequently.
