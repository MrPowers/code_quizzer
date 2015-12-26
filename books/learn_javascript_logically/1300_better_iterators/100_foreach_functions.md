# forEach Functions

The for loop uses a verbose syntax. Here's a for loop that iterates through an array of strings:

```javascript
var people = ["manuel", "sid", "li li"];
for (var i = 0; i < people.length; i++) {
  console.log(people[i] + " is a person");
}
```

The forEach() function can do the same thing but with cleaner syntax. Here is how we would iterate through the same `people` array using forEach():

```javascript
var people = ["manuel", "sid", "li li"];
people.forEach(function(person) {
  console.log(person + " is a person");
});
```

The forEach() function takes an anonymous function as an argument; this type of anonymous function is commonly referred to as a *callback*.  The forEach() function iterates through all the people in the array and passes each person as an argument to the callback function.  

Let's assign the callback function to a variable to make the code clearer.

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
