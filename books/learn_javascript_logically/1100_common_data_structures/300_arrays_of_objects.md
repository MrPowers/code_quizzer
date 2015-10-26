# Arrays of Objects

Objects are frequently stored in arrays.  Here is an array of people.

```javascript
var tom = {
  name: "tom",
  job: "plumber"
}

var phil = {
  name: "phil",
  job: "teacher"
}

var susan = {
  name: "susan",
  job: "doctor"
}

var people = [tom, phil, susan];
```

It is easy to iterate over an array of objects and print information to the console.  Take note that this code is relatively easy to read.

```javascript
for (var i = 0; i < people.length; i++) {
  var person = people[i];
  console.log(person.name + " is a " + person.job)
}
```

This for loop will print the following output to the console.

<pre>
tom is a plumber
phil is a teacher
susan is a doctor
</pre>

When the same data is stored in a nested array, the for loop is harder to read.

```javascript
var peopleData = [
  ["tom", "plumber"],
  ["phil", "teacher"],
  ["susan", "doctor"]
]

for (var i = 0; i < peopleData.length; i++) {
  console.log(peopleData[i][0] + " is a " + peopleData[i][1]);
}
```

Arrays of objects are **very** common in JavaScript.

