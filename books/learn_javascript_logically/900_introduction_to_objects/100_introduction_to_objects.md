# Introduction to Objects

Objects store data and provide functions to manipulate the data.  Here's an example of a goodStudent object.

```javascript
var goodStudent = {
  name: "Mauricio",
  age: 19
}
```

name and age are properties of the goodStudent object and the values associated with these properties can be accessed with dot notation.

```javascript
goodStudent.name; // "Mauricio"
goodStudent.age; // 19
```

Object properties can be assigned to anonymous functions to give objects dynamic behavior.

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

In the example above, the kid.firstName and kid.lastName syntax that we've seen previously is used to access the values associated with the firstName and lastName properties.  The `this` keyword can also be used in an object function to refer to the current object.  This code is equivalent to the example above.

```javascript
var kid = {
  firstName: "Bart",
  lastName: "Simpson",
  fullName: function() {
    return(this.firstName + " " + this.lastName);
  }
}
```

