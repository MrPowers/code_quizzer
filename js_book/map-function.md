# Map Function

The map() function is useful for code that iterates over one array and returns another array.  The following example shows how to square every number in an array with forEach() and then we'll rewrite the code with map() to make it cleaner.

```javascript
var numbers = [2, 4, 6, 8];
var result = [];
numbers.forEach(function (number) {
  result.push(number * number);
});
console.log(result); // [4, 16, 36, 64]
```

The map() method automatically appends the return value of the callback function to a new array.

```javascript
var numbers = [2, 4, 6, 8];
var result = numbers.map(function (number) {
  return(number * number);
});
console.log(result); // [4, 16, 36, 64]
```

The map() function does not require us to create an empty array and push the values to the array for each iteration.  The map() function provides this functionality automatically.

The following code uses an anonymous function (assigned to the squareNumber variable) to further illustrate how the map() function creates an empty array and appends the return value of the anonymous function to the array.

```javascript
var numbers = [2, 4, 6, 8];

var squareNumber = function (number) {
  return(number * number);
}

result = [];
result.push(squareNumber(numbers[0]));
result.push(squareNumber(numbers[1]));
result.push(squareNumber(numbers[2]));
result.push(squareNumber(numbers[3]));

console.log(result); // [4, 16, 36, 64]
```

The map() function can use the squareNumber() function to yeild the same result.

```javascript
var numbers = [2, 4, 6, 8];

var squareNumber = function (number) {
  return(number * number);
}

var result = numbers.map(squareNumber);

console.log(result); // [4, 16, 36, 64]
```

