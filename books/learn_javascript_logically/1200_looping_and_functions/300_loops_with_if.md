# Loops with If

When an array contains elements with different types, you'll need to use if statements to perform some type checking.  Here is the code to loop through an array and add only the number elements:

```javascript
function numberAdder (stuff) {
  var result = 0;
  for (var i = 0; i < stuff.length; i++) {
    var element = stuff[i];
    if (typeof(element) == "number") {
      result += element;
    }
  }
  return(result);
}

var weird = [1, 40, "bob", [], false, 89];
var r = numberAdder(weird);
console.log(r); // 130
```

The numberAdder() iterates through all the elements in the weird array and adds the element to the running total if it is a number.

Now let's write a function to concatenate all the elements in an array that begin with the letter "b".

```javascript
function stringConcatenator (array) {
  var result = "";
  for (var i = 0; i < array.length; i++) {
    var element = array[i];
    if (element[0] == "b") {
      result += element + " ";
    }
  }
  return(result);
}

var heaven = [34, [], "bodacious", "barbecues", "begin", "whatever", "by", "battering", true, "bacon"];
var r = stringConcatenator(heaven);
console.log(r); // "bodacious barbecues begin by battering bacon"
```
