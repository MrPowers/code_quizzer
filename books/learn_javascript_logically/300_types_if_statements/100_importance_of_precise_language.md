# Importance of Precise Language

Computers are literal and precise. To a computer, "two times the sum of four and three" is not the same as "two times four plus three":

```javascript
console.log(2 * (4 + 3)) // 14
console.log(2 * 4 + 3) // 11
```

Because computers are extremely strict in the way they interpret commands, it's important that we use precise language when talking about programming.

In the following example, the variable phone is declared and then assigned to the value "addicted".

```javascript
var phone;
phone = "addicted";
```

Novice programers are tempted to say the variable phone *equals* the value "addicted", but that is not correct.  Variable assignment is completely different than equality comparisons.

```javascript
var butterfly = "pretty"; // variable assignment
42 === 35; // equality comparison
```

In the following statement, 4 and 5 are referred to as operands and + is the operator.

```javascript
console.log(4 + 5);
```

In the following statement, typeof() is the operator and false is the operand.

```javascript
typeof(false);
```

We've taken great care to make the language in this book concise and precise.  Make a concerted effort to study this language and use it exactly.  Exact language will accelerate your learning process.
