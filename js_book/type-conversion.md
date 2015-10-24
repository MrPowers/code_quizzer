# Type Conversion

If JavaScript cannot perform an operation with the supplied arguments, it will aggressively convert the arguments to different types to see if the operation can be completed.

In the following statment, the integer 1 is converted to a string to perform string concatenation.

```javascript
"bob" + 1; // "bob1"
```

You will get the same answer when "1" is explicitly set as a string.

```javascript
"bob" + "1"; // "bob1"
```

Automatic type conversion can yield unexpected results.  Suppose you are trying to add two numbers, but one of the numbers is a string by accident.

```javascript
22 + "44"; // "2244"
```

22 is converted to a string and then "22" and "44" are concatenated to yield the string "2244" - a surprising result if the integer 66 is expected!

Type conversion is especially bizarre when it comes to the == operator.

```javascript
true == 1; // true
```

When the == operator is used, true is converted to 1, so true == 1 evaluates to true.  The === operator does not convert types and is much more useful when comparing the equality of two operands.

```javascript
true === 1; // false
```

Functions can be written to check for types to make sure they're not accepting arguments that are the wrong type.

```javascript
function add(a, b) {
  if (typeof(a) !== "number") {
    return(a + " is not a number")
  }
  if (typeof(b) !== "number") {
    return(b + " is not a number")
  }
  return(a + b);
}

add("bob", 3); // "bob is not a number"
add(55, true); // "true is not a number"
add(1, 2); // 3
```

A lot of programming languages raise errors when the types are different from what is expected and many programmers hate JavaScript's aggressive type conversion.  Checking the type of every argument of every function can be a tedious process.  JavaScript isn't a perfect language and let's remember to have a positive attitude when dealing with the language flaws :)

