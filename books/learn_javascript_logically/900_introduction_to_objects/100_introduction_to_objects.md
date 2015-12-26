# Introduction to Objects

Objects store data and provide functions to manipulate the data.  Here's an example of a goodStudent object.

```javascript
var goodStudent = {
  name: "Mauricio",
  age: 19
}
```

`name` and `age` are called *properties* of the goodStudent object.  The values of an object's properties can be accessed using dot notation:

```javascript
goodStudent.name; // "Mauricio"
goodStudent.age; // 19
```

Dot notation can also be used to reassign properties to new values.  Let's say yesterday was Mauricio's birthday.  We can change his age to 20 like so:

```javascript
goodStudent.age = 20;
```

Object properties aren't limited to strings and numbers.  Properties can also be assigned to anonymous functions to give objects dynamic behavior.

```javascript
var kid = {
  firstName: "Bart",
  lastName: "Simpson",
  fullName: function() {
    return(kid.firstName + " " + kid.lastName);
  }
}
kid.fullName(); // "Bart Simpson"
```

In the example above, the kid.firstName and kid.lastName syntax that we've seen previously is used to access the values associated with the firstName and lastName properties.  The `this` keyword can also be used in an object function to refer to the current object.  The following code is equivalent to the example above:

```javascript
var kid = {
  firstName: "Bart",
  lastName: "Simpson",
  fullName: function() {
    return(this.firstName + " " + this.lastName);
  }
}
```
