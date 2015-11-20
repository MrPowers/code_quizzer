# More Arrays

Elements can be added to arrays with the `push` method.

```javascript
var dorks = ["me", "einstein"];
dorks.push("you");
console.log(dorks); // ["me", "einstein", "you"]
```

Welcome to the dork club!

Multiple elements can be added to an array with the push method.

```javascript
var n = [1, 2];
n.push(3, 4);
console.log(n); // [1, 2, 3, 4]
```

Array elements can be updated by indexing into the array and assigning the element to a new value.

```javascript
var games = ["halo", "starcraft"];
games[0] = "candyland";
console.log(games); // ["candyland", "starcraft"]
```

The join method can be used to combine all the elements of an array into a single string.

```javascript
var lol = ["i", "like", "ice", "cream"];
var lolString = lol.join(" ");
console.log(lolString); // "i like ice cream"
```
