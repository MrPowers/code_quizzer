# forEach Functions

forEach() functions can be used to iterate over arrays with a better syntax than what is provided by for loops.  This is the verbose syntax required by a for loop to iterate through a collection of strings.

```javascript
var people = ["manuel", "sid", "li li"]
for (var i = 0; i < people.length; i++) {
  console.log(people[i] + " is a person");
}
```

The forEach() function can also be used to iterate through the people array.

```javascript
people.forEach(function(person) {
  console.log(person + " is a person");
});
```

The forEach() function takes an anonymous function as an argument (this anonymous function is referred to as a callback function).  The forEach() function iterates through all the people in the array and passes each person as an argument to the callback function.  Let's assign the callback function to a variable to make the code clearer.

```javascript
var peopleSpeaker = function(person) {
  console.log(person + " is a person");
}
people.forEach(peopleSpeaker);
```

The forEach() function calls the peopleSpeaker() function three times.

```javascript
peopleSpeaker("manuel");
peopleSpeaker("sid");
peopleSpeaker("li li");
```

Traditional JavaScript for loops are ugly and hard to read.  Use the forEach() function to make your code more readable.

