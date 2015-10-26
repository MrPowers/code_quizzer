# More Variable Reassignment

The following example shows how to increment the variable `x` by 2 (e.g. reassign the variable `x` to a value that is two greater than the current value that `x` is assigned to):

```javascript
var x = 88; // x is assigned to the value 88
x = x + 2; // x is incremented by 2
console.log(x); // 90
```

The statement `x = x + 2;` executes the code to the right of `=` first and then reassigns `x` to the new value.  `x = x + 2;` reassigns `x` to the value `90`.

The following statement demonstrates shortcut notation for adding `5` to the variable `y`.

```javascript
var y = 3;
y += 5; // y is reassigned to 8
```

`y += 5;` is the same as `y = y + 5;`.  This shortcut notation is used so experienced programmers can write less code.  Shorcut notation is confusing for beginning programmers and the only reason it is being introduced now is because it is used frequently.

The `++` operator can be used to increment a variable by 1:

```javascript
var i = 0; // i is assigned to 0
i++; // i is reassigned to 1
console.log(i); // prints 1 to the console
i++; // i is reassigned to 2
console.log(i); // prints 2 to the console
```

The `++` operator is used frequently, especially with loops that are covered in the upcoming sections.
