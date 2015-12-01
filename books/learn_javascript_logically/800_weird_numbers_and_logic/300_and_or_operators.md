# && and || Operators
The comparison operators && (and) and || (or) test the boolean values of two or more expressions.  

The && operator returns true if both sides are true.

```javascript
true && true; // true
```

In the example above, true and true are referred to as the operands and && is the operator.  Both operands return true, so the expression returns true.

If one or both of the operands is false, the && operator will return false.

```javascript
false && true; // false
true && false; // false
false && false; // false
```

Here is how the && operator can be used in an if statement.

```javascript
var age = 17;
if (age > 12 && age < 20) {
  console.log("This person is a teenager");
}
```

The variable `age` is set to 17, so both `age > 12` and `age < 20` evaluate to true.  The string "This person is a teenager" is printed to the console.

The || operator returns true if one or both of the operands is true.

```javascript
false || true; // true
true || false; // true
true || true; // true
```

The || operator returns false only if both of the operands are false.

```javascript
false || false; // false
```

Here is how the || operator can be used in an if statement.

```javascript
var age = 7;
if (age < 13 || age > 19) {
  console.log("This person is NOT a teenager");
}
```

The if statement will print "This person is NOT a teenager" to the console if the age is less than 13 or greater than 19.
