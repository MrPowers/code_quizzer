#Variable reassignment

The following statement declares the variable `b` and assigns `b` to the value `"hello world"`.

```javascript
var b = "hello world";
```

Variables can be reassigned to other values.  The following statement reassigns the variable `b` to the value `3`.

```javascript
b = 3;
console.log(b) // 3
```

When variables are reassigned, they lose memory of any former values. In the above example, when the variable b is reassigned to 3, b forgets that it was once assigned to "hello world". It is as if

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
