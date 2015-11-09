# Introduction to Arrays

An array is an ordered collection of items. The items can be of any JavaScript type, including strings, numbers, and booleans. The following example shows the beginning of the alphabet, an ordered collection of the strings "a", "b", "c", "d", and "e":

```javascript
var letters = ["a", "b", "c", "d", "e"];
```

We could also create an array of the first five numbers:
```javascript
var numbers = [1, 2, 3, 4, 5];
```

And you can mix between the two:
```javascript
var lettersandnumbers = ["string", 10, true, "what?"];
```

Each element of an array has a position, and the counting starts at zero. It's worth repeating: *the counting starts at zero*, not one. In the example array `letters`, "a" is at position 0, "b" is at position 1, "c" is at position 2, and so forth:

<pre>
a b c d e
0 1 2 3 4
</pre>

The numbers 0, 1, and 2 are referred to as array indexes. The following code can be used to get the value at index 2 of the letters array.

```javascript
var letters = ["a", "b", "c", "d", "e"];
console.log(letters[2]); // "c"
```

The following code can be used to get the first value of the people array.

```javascript
var people = ["bob", "frank", "liz"];
console.log(people[0]); // "bob"
```

Remember that the first element of any array is always at index position 0.

Arrays have a length property that returns the number of elements in an array.  The following sports array has three elements so the length property returns the integer 3.

```javascript
var sports = ["soccer", "football", "baseball"];
console.log(sports.length); // 3
```
