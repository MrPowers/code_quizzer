# Undefined

undefined is a value in JavaScript that is used to represent nothingness.  When a variable is declared, it is assigned to undefined by default.

```javascript
var bb;
bb === undefined; // true
```

Remember that variables can be reassigned to other values after they are initially declared.

```javascript
var abc;
abc === undefined; // true
abc = "happy";
abc === undefined // false
```

Functions that do not use the return keyword to explicity return a value will return undefined by default.

```javascript
function boring() {}
var result = boring();
result === undefined; // true
```

Functions can perform operations, but will still return undefined if the return keyword is forgotten.

```javascript
function add(a, b) {
  a + b;
}
var result = add(44, 55);
result === undefined; // true
```

undefined is a separate type:

```javascript
typeof(undefined); // "undefined"
```

Strings ("bob", "i like cheese"), numbers (4.55, 77), and booleans (true, false) are other types we've already covered in this book.

