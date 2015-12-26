# Nested Arrays

Arrays can contain other arrays to model complicated data structures.  Take the following array that lists a persons name and age.

```javascript
var people = [['bob', 34], ['jose', 18]]
```

The outer array and inner arrays can be indexed like any other array:

```javascript
people[0]; // ['bob', 34]
people[0][1]; // 34
```

`people[0]` returns `['bob', 34]`, so `people[0][1]` is the same as `['bob', 34][1]`.

Here is how we can use the people array to create this names array: `['bob', 'jose']`.

```javascript
var names = [];
for (var i = 0; i < people.length; i++) {
  names.push(people[i][0]);
}
console.log(names); // ['bob', 'jose']
```

The following array of arrays contains groups of cities and their respective countries.  The for loop iterates over the nested arrays and prints our information about each city to the console.

```javascript
var cities = [['jarkata', 'indonesia'], ['bangalore', 'india']];
for (var i = 0; i < cities.length; i++) {
  var m = cities[i][0] + " is located in " + cities[i][1];
  console.log(m);
}
```

This loop prints the following output to the console:

<pre>
jarkata is located in indonesia
bangalore is located in india
</pre>

A nested array data structure can also be used to represent a student's name, telephone number, and course of study.

```javascript
var students = [
  ['frank', '444-4444', 'biology'],
  ['saurabh', '333-3333', 'math'],
  ['tomo', '999-9999', 'finance']
}
```

Nested arrays are a powerful and flexible way to store data.
