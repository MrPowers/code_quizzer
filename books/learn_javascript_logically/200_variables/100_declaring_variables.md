# Declaring Variables

Variables in JavaScript are containers for storing data values.  The following statement declares the variable hello:

```javascript
var hello;
```

Once variables are declared, they can be assigned to a value:

```javascript
var catSounds;
catSounds = "meow";
```

The catSounds variable is now assigned to the value "meow":

```javascript
console.log(catSounds); // prints "meow" to the console
```

Variables can be declared and assigned in a single line of code:

```javascript
var bestNumber = 8;
```

The statment above is equivalent to these two statements:

```javascript
var bestNumber;
bestNumber = 8;
```

Once a variable is declared, it does not need to be re-declared.  The following code is bad:

```javascript
var sad;
var sad = "this code sucks"; // sad was already declared!  This is bad!
```

This is much better:

```javascript
var happy;
var happy = ":-)";
```

