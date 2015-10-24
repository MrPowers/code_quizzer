# Nested Objects

Nested objects are objects within other objects.  Let's review start by reviewing a basic object:

```javascript
var president = {
  firstName: "Barack",
  lastName: "Obama"
}

president.firstName; // "Barack"
president.lastName; // "Obama"
```

The president's wife can be modeled as a nested object.

```javascript
var president = {
  firstName: "Barack",
  lastName: "Obama",
  wife: {
    firstName: "Michelle",
    lastName: "Obama",
    birthYear: 1964
  }
}

president.wife.firstName; // "Michelle"
president.wife.birthYear; // 1964
```

Nested objects can be used to model the real world and are used extensively.

Here is another way to write the president object and get the same result:

```javascript
firstLady = {
  firstName: "Michelle",
  lastName: "Obama",
  birthYear: 1964
}

var president = {
  firstName: "Barack",
  lastName: "Obama",
  wife: firstLady
}

president.wife.firstName; // "Michelle"
president.wife.birthYear; // 1964
firstLady.birthYear; // 1964
```

