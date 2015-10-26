# Functions With Array Arguments

Functions can take an array of elements as an argument.

```javascript
function adder(numbers) {
  var result = 0;
  for (var i = 0; i < numbers.length; i++) {
    result += numbers[i];
  }
  return(result);
}

adder([1, 4, 9]); // 14
adder([10, 20]); // 30
adder([55]); // 55
```

The adder function is cool because it can sum the numbers in an array of any length.

We can use to adder function to calculate the average of the numbers in an array of any length.

```javascript
function averager(numbers) {
  var result = adder(numbers) / numbers.length;
  return(result);
}

averager([1, 4, 9]); // 4.66
averager([10, 20]); // 15
averager([55]); // 55
```

The following funify function will add the string "is fun!" to each element in an array.

```javascript
function funify(words) {
  var result = [];
  for (var i = 0; i < words.length; i++) {
    result.push(words[i] + " is fun!");
  }
  return(result);
}

funify(["math", "programming"]); // ["math is fun!", "programming is fun!"]
```

The funify function iterates over every element in the words array and adds "is fun!" to each array element.

