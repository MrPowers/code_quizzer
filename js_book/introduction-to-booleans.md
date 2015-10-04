# Introduction to Booleans

Boolean values are either `true` or `false` - there are only two boolean values.

```javascript
console.log(true); // prints the boolean value true to the console
console.log(false); // prints the boolean value false to the console
```

Boolean conditions are statements that evaluate to a boolean value (i.e. statments that return `true` or `false`).  Here is an example of a boolean condition that returns `true`:

```javascript
Boolean(2 < 5); // true
```

The same boolean condition can be written with this shorthand notation:

```javascript
2 < 5; // true
```

Boolean conditions can also return false:

```javascript
Boolean (2 > 5); // false
2 > 5; // false
```

The typeof() operator can be used to demonstrate that `true` and `false` and boolean values:

```javascript
typeof(true); // "boolean"
typeof(false); // "boolean"
```
