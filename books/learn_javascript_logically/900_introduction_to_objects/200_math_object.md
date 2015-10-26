# Math Object

Objects can have properties that are assigned to functions that take arguments.

```javascript
var MyMath = {
  add: function(x, y) {
    return(x + y);
  }
}
console.log(MyMath.add(3, 4)); // 7
```

The MyMath object has and add property that is invoked with two arguments.

Let's add another property to the MyMath object called pow that returns the first argument to the exponent of the second argument.

```javascript
var MyMath = {
  pow: function(x, y) {
    var i = 0;
    var result = 1;
    while(i < y) {
      result = result * x;
      i++;
    }
    return(result);
  }
}
console.log(MyMath.pow(2, 4)); // 16
```

JavaScript comes with a built-in Math object that operates similarly to the MyMath object we've constructed:

```javascript
Math.pow(2, 5); // 32
MyMath.pow(2, 5); // 32
```

The Math object can be used to find the largest value in a series of numbers:

```javascript
Math.max(22, 95, 44); // 95
```

The Math object stores important constant values, like PI:

```javascript
Math.PI; // 3.141592653589793
```

Make sure to investigate the Math object when doing mathematical operations with JavaScript.

