#Variable reassignment

The following statement declares the variable `b` and assigns `b` to the value `"hello world"`.

```javascript
var b = "hello world";
```

Variables can be reassigned to other values.  The following statment reassigns the variable `b` to another value `3`.

```javascript
b = 3;
console.log(b) // 3
```

When variables are reassigned, they completely forget about any value they used to be assigned to.  When b is reassigned to 3, it does not remember that is used to be assigned to "hello world".

Variables can be reassigned multiple times:

```javascript
var funny = "homer";
funny = "otto";
console.log(funny); // "otto"
funny = "arrested development";
console.log(funny); // "arrested development"
funny = "cops";
console.log(funny); // "cops"
```

Notice that the `var` keyword is not used when the variable is reassigned.  The `var` keyword is only needed when the variable is declared.  After the variable is declared, `var` isn't needed anymore.

