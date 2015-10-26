# Introduction to Arrays

An array is an ordered collection of items.  The alphabet is an ordered collection of letters and the following example shows the beginning of the alphabet.

```javascript
var letters = ["a", "b", "c", "d", "e"];
```

Each element of an array has a position and the counting starts at zero.  "a" is at position 0, "b" is at position 1, "c" is at position 2, and so forth.  0, 1, and 2 are referred to as array indexes.

<pre>
a b c d e
0 1 2 3 4
</pre>

The following code can be used to get the value at index 2 of the letters array.

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

