if Rails.env.developemt?
  family = Family.create!(
    name: "Programming",
    description: "Ruby, Rails and JavaScript practice problems",
    page_title: "Learn Ruby, Rails, JavaScript | How to code",
    slug: "learn-programming"
  )

  User.create email: 'you@example.com', password: 'password', password_confirmation: 'password', username: Faker::Internet.user_name, role: 'admin'

  topic = family.topics.create! name: 'Rails Topic', slug: 'topic-slug', family_id: family.id
  quiz1 = topic.quizzes.create! body: 'MVC Quiz', slug: 'quiz-slug', description: 'A first quiz', page_title: 'a quiz page title'
  quiz1.questions.create! body: 'Knock knock', answer: "Who's there"
end


#############################################
# stuff to be seeded in all environments
#############################################

#############################################
# STUDENT WEBPAGES
#############################################

StudentWebpage.where(name: "cinderella", student_id: 1, website_created_at: "2015-10-05").first_or_create
StudentWebpage.where(name: "colombia", student_id: 1, website_created_at: "2015-10-06").first_or_create
StudentWebpage.where(name: "learning_git", student_id: 1, website_created_at: "2015-10-13").first_or_create



#############################################
# JAVASCRIPT BOOK
#############################################

# introduction-to-numbers

SectionQuestion.where(
body:
%q{
Perform these exercises in the JavaScript console of your favorite web browser.

What does the following expression print to the console?

```javascript
console.log(3 + 2);
```
},
answer:
%q{
```javascript
5
```

3 and 2 are called operands and + is the operator.
},
section_name: "introduction-to-numbers",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log(3 + 4 * 2);
```
},
answer:
%q{
```javascript
11
```

4 is multiplied by 2 first and the product is added to 3.
},
section_name: "introduction-to-numbers",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log(4.4 - 3.4);
```
},
answer:
%q{
```javascript
1.0000000000000004
```

Numbers with decimal points (e.g. 4.4, 1.8) are called floating point numbers.  Computers cannot do math with floating point numbers precisely (this is why the answer is slightly different from 1).  Integers are numbers without decimal points (e.g. 5 and 5,397) and computers can do math with integers precisely.
},
section_name: "introduction-to-numbers",
order: 300
).first_or_create


# introduction-to-strings

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log("sponge" + "bob");
```
},
answer:
%q{
```javascript
"spongebob"
```

It is called string concatenation when two strings are combined.
},
section_name: "introduction-to-strings",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log("colombia".length);
```
},
answer:
%q{
```javascript
8
```

The "colombia" string has 8 letters, so the length is 8.
},
section_name: "introduction-to-strings",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log('i am'.length);
```
},
answer:
%q{
```javascript
4
```

The 'i am' string has three letters and one space, so the length is 4.  Spaces count!
},
section_name: "introduction-to-strings",
order: 300
).first_or_create


# introduction-to-booleans

SectionQuestion.where(
body:
%q{
What are the two boolean values in the JavaScript programming language?
},
answer:
%q{
true and false
},
section_name: "introduction-to-booleans",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log(Boolean(3 > 1));
```
},
answer:
%q{
```javascript
true
```

The number 3 is greater than the number 1, so the boolean condition returns true.  Boolean conditions are statements that return true or false.
},
section_name: "introduction-to-booleans",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log(4 === 4);
```
},
answer:
%q{
```javascript
true
```

The number 4 equals the number 4, so the boolean condition returns true.
},
section_name: "introduction-to-booleans",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log("cat" === "cat");
```
},
answer:
%q{
```javascript
true
```

The string "cat" is the same as the other string "cat", so the boolean condition returns true.
},
section_name: "introduction-to-booleans",
order: 400
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following expression print to the console?

```javascript
console.log("fork" === "plate");
```
},
answer:
%q{
```javascript
false
```

The string "fork" is different than the string "plate" so the boolean condition returns false.
},
section_name: "introduction-to-booleans",
order: 500
).first_or_create


# declaring-variables

SectionQuestion.where(
body:
%q{
Declare the variable iAmSilly.
},
answer:
%q{
```javascript
var iAmSilly;
```
},
section_name: "declaring-variables",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
Declare the variable goodPlayer and assign it to the value "Steve Kerr".
},
answer:
%q{
```javascript
var goodPlayer;
goodPlayer = "Steve Kerr";
```

The goodPlayer variable can also be declared and assigned on a single line:

```javascript
var goodPlayer = "Steve Kerr";
```
},
section_name: "declaring-variables",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
Assign the variable x to the value 3 and assign the variable y to the value 5.  Print the sum of x and y to the console.
},
answer:
%q{
```javascript
var x = 3;
var y = 5;
console.log(x + y);
```
},
section_name: "declaring-variables",
order: 300
).first_or_create


# variable-reassignment

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var country = "Argentina";
country = "Bolivia";
country = "Colombia";
console.log(country);
```
},
answer:
%q{
"Colombia"

The country variable is initially assigned to "Argentina", then reassigned to "Bolivia", then reassigned to "Colombia".
},
section_name: "variable-reassignment",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var person = "Frank";
person = 3;
console.log(person);
```
},
answer:
%q{
3

The person variable was initially assigned to the string "Frank" and then reassigned to the number 3.
},
section_name: "variable-reassignment",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var blah = "meh";
var motivation = "super!!!";
blah = motivation;
console.log(blah);
```
},
answer:
%q{
"super!!!"

The blah variable is initially assigned to the "meh" string.  The motivation variable is initially assigned to the "super!!!" string.  blah is then reassigned to the same value that motivation is assigned to (e.g. blah is reassigned to "super!!!").
},
section_name: "variable-reassignment",
order: 300
).first_or_create


# variables-and-values

SectionQuestion.where(
body:
%q{
Identify the variables and values in the following statements:

```javascript
var hiThere = "greetings";
var numNum = 55;
var liar = false;
```
},
answer:
%q{
hiThere, numNum, and liar are variables.  "greetings", 55, and false are values.

Variables are assigned to values.
},
section_name: "variables-and-values",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var myIq = 10;
var yourIq = 170;
console.log(myIq > yourIq);
```
},
answer:
%q{
```javascript
false
```

The myIq variable is assigned to the value 10.  The yourIq variable is assigned to the value 170.  The boolean condition (myIq > yourIq) evalues to false.
},
section_name: "variables-and-values",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var gg = 4;
var ll = 4;
console.log(gg === ll);
```
},
answer:
%q{
```javascript
true
```

The gg and ll variables are both assigned to the value 4.  The === operator returns true when both of the operands are the same.  In this example, gg and ll are the operands and === is the operator.
},
section_name: "variables-and-values",
order: 300
).first_or_create


# variable-practice

SectionQuestion.where(
body:
%q{
Assign the variable yy to the value "i like ".  Assign the variable zz to the value "whales".  Concatenate the two variables and print the result to the console.
},
answer:
%q{
```javascript
var yy = "i like ";
var zz = "whales";
console.log(yy + zz);
```
},
section_name: "variable-practice",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
Assign the variable birthYear to the value 1970.  Assign the variable singularityYear to 2032.  Subtract birthYear from singularityYear and print the result to the console.
},
answer:
%q{
var birthYear = 1970;
var singularityYear = 2032;
console.log(singularityYear - birthYear);
},
section_name: "variable-practice",
order: 200
).first_or_create


# more-variable-reassignment

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var ww = 3;
ww = ww - 2;
console.log(ww);
```
},
answer:
%q{
```javascript
1
```

The ww variable is initially assigned to 3.  ww is then reassigned to 1 (the right side of the equation, ww - 2, is executed first, and then ww is reassigned).  Then ww is printed to the console.
},
section_name: "more-variable-reassignment",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var lala = 66;
lala -= 3;
console.log(lala);
```
},
answer:
%q{
```javascript
63
```

lala is initially assigned to 66.  lala is then reassigned to lala minus 3, or 63.  lala -= 3 is the same as lala - 3.

```javascript
lala = lala - 3; // reassigns lala to lala minus 3
lala -= 3; // shorthand notation for lala = lala - 3
```
},
section_name: "more-variable-reassignment",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var counter = 4;
counter++;
console.log(counter);
```
},
answer:
%q{
```javascript
5
```

counter is initially assigned to 4 and then reassigned to counter + 1.  counter++ is shorthand notation for counter = counter + 1.  Shorthand notation is useful for experienced programmers to complete common tasks with less typing.  Shorthand notation is difficult for new programmers because there are multiple ways of writing the same thing (and the shorthand notation is usually less clear).
},
section_name: "more-variable-reassignment",
order: 300
).first_or_create


SectionQuestion.where(
body:
%q{
Show how the following statment can be written differently with the two different shorthand notations.

```javascript
var sleepy;
sleepy = sleepy + 1;
```
},
answer:
%q{
```javascript
sleepy += 1;
```

OR

```javascript
sleepy++;
```
},
section_name: "more-variable-reassignment",
order: 400
).first_or_create


# introduction-to-types

SectionQuestion.where(
body:
%q{
What does the following statement print to the console?

```javascript
console.log(typeof("gg"));
```
},
answer:
%q{
"string"

"gg" is a string.
},
section_name: "introduction-to-types",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following statement print to the console?

```javascript
console.log(typeof(true));
```
},
answer:
%q{
"boolean"

true is a boolean value.
},
section_name: "introduction-to-types",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following statement print to the console?

```javascript
console.log(typeof(3) === "number");
```
},
answer:
%q{
true

typeof(3) returns "number", which is equivalent to the string "number".
},
section_name: "introduction-to-types",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following statement print to the console?

```javascript
console.log(typeof(typeof(78)));
```
},
answer:
%q{
"string"

typeof(78) is executed first and returns the string "number", so typeof(typeof(78)) simplifies to typeof("number").  typeof("number") returns "string".
},
section_name: "introduction-to-types",
order: 400
).first_or_create


# importance-of-precise-language

SectionQuestion.where(
body:
%q{
Describe the following code using precise language.

```javascript
var yummy;
yummy = "cookies";
```
},
answer:
%q{
The variable yummy is declared.  yummy is assigned to the value "cookies".
},
section_name: "importance-of-precise-language",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
Describe the following code using precise language.

```javascript
var nice = "spa weekend!";
console.log(nice);
```
},
answer:
%q{
The variable nice is declared and assigned to the value "spa weekend!".  The value that is assigned to the variable nice is then printed to the console.
},
section_name: "importance-of-precise-language",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
Identify the operands and operator and in the following statment.

```javascript
3 * 45;
```
},
answer:
%q{
* is the operator.

3 and 45 are the operands.
},
section_name: "importance-of-precise-language",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
Identify the operand and operator and in the following statment.

```javascript
typeof(4.44);
```
},
answer:
%q{
typeof() is the operator.

4.44 is the operand.
},
section_name: "importance-of-precise-language",
order: 400
).first_or_create

# if-statements

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
console.log("A B C");
var singer = "michael";
if (singer === "michael") {
  console.log("It's easy as 1 2 3");
}
console.log("It's simple as do re me");
```
},
answer:
%q{
<pre>
A B C
It's easy as 1 2 3
It's simple as do re me
</pre>

The variable singer is assigned to the value "michael".  The string "michael" is the same as the other string "michael" so the code block associated with the if statement is executed.
},
section_name: "if-statements",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
console.log("I like");
if (32 > 55) {
  console.log("evil clowns and");
}
console.log("funny jokes");
```
},
answer:
%q{
<pre>
I like
funny jokes
</pre>

The conditional 32 > 55 evaluates to false, so the string "evil clowns and" is not printed to the console.
},
section_name: "if-statements",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var y = "cypress hill";
if (7 === 7) {
  y = "house of pain";
}
console.log(y);
```
},
answer:
%q{
"house of pain"

The boolean condition 7 === 7 evaluates to true so the code block associated with the if statement is executed and the y variable is reassigned to the string "house of pain".
},
section_name: "if-statements",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var number = 5;
if (number > 10) {
  number = number + 4;
}
console.log(number);
```
},
answer:
%q{
5

The variable number is assigned to the value 5.  The boolean condition (number > 10) evaluates to false so the code block associated with the if statement is not executed and the number variable is not reassigned.  The number variable is still assigned to 5 when it is printed to the console.
},
section_name: "if-statements",
order: 400
).first_or_create


# if-else-statements

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
if (5 === 6) {
  console.log("i get down in colombia");
} else {
  console.log("and look funny");
}
```
},
answer:
%q{
"and look funny"

The boolean condition (5 === 6) evaluates to false so the code associated with the else keyword is executed.
},
section_name: "if-else-statements",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var me = "gringo";
if ("gringo" === me) {
  console.log("me llamo mateo");
} else {
  console.log("and my Spanish sucks");
}
```
},
answer:
%q{
me llamo mateo

The boolean condition ("gringo" === me) evaluates to true so the code block associated with the if keyword is executed.
},
section_name: "if-else-statements",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var bestNumber = 8;
if (bestNumber / 2 / 2 === 2) {
  console.log("Dan Ostrov is awesome");
} else {
  console.log("I love math");
}
```
},
answer:
%q{
Dan Ostrov is awesome

The boolean condition (bestNumber / 2 / 2 === 2) evaluates to true so the code associated with the if condition is executed.
},
section_name: "if-else-statements",
order: 300
).first_or_create


# introduction-to-arrays

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var cars = ["toyota", "honda", "volvo"];
console.log(cars[1]);
```
},
answer:
%q{
honda

Index position 1 corresponds with the second element of the array, which is the string "honda".
},
section_name: "introduction-to-arrays",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
Print the first element of the following array to the console.

```javascript
var simpsons = ["homer", "lisa", "bart"];
```
},
answer:
%q{
console.log(simpsons[0]);

Index position 0 corresponds with the first element of the array.
},
section_name: "introduction-to-arrays",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var fun = ["party"];
console.log(fun.length);
```
},
answer:
%q{
1

There is only one element in the party array, so the length property returns 1.
},
section_name: "introduction-to-arrays",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var arrestedDev = ["tobias", "michael", "gob"];
console.log(arrestedDev[arrestedDev.length - 1]);
```
},
answer:
%q{
gob

The arrestedDev array has three elements, so the length property returns 3.  The length of an array minus one equals the index position of the last element in the array :)
},
section_name: "introduction-to-arrays",
order: 400
).first_or_create



# while-loops

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var counter = 25;
while (counter < 28) {
  console.log("The counter is " + counter);
  counter = counter + 1;
}
```
},
answer:
%q{
<pre>
The counter is 25
The counter is 26
The counter is 27
</pre>
},
section_name: "while-loops",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var i = 0;
while (i < 3) {
  i++;
  console.log("I like " + i);
}
```
},
answer:
%q{
<pre>
I like 1
I like 2
I like 3
</pre>

The variable i is incremented before the console.log statement so the results are slightly different from what we've seen so far.
},
section_name: "while-loops",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
```javascript
var sum = 0;
var counter = 0;
while (counter < 5) {
  sum = sum + counter;
  counter = counter + 1;
}
console.log(sum);
```
},
answer:
%q{
This loops adds the numbers 0, 1, 2, 3, and 4, and assigned the result (10) to the sum variable.  This example is a bit more complex because two variables are being reassigned for each loop iteration.
},
section_name: "while-loops",
order: 300
).first_or_create


# infinite-loops

SectionQuestion.where(
body:
%q{
Describe if this is an infinite loop or not.

```javascript
x = 4;
while (x === 4) {
  console.log("will I terminate?");
}
```
},
answer:
%q{
This is an infinite loop because the boolean condidion (4 === 4) always evaluates to true.
},
section_name: "infinite-loops",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
Describe if this is an infinite loop or not.

```javascript
var counter = 0;
while (counter < 4) {
  console.log("give me chicken");
}
```
},
answer:
%q{
The counter variable is assigned to 0 and is never reassigned, so the boolean condition (0 < 4) always evaluates to true and the loop continues forever.
},
section_name: "infinite-loops",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
Describe if this is an infinite loop or not.

```javascript
var counter = 0;
var i = 0;
while (counter < 100) {
  console.log("I like Indian food");
  i++;
}
```
},
answer:
%q{
Yes, this is an infinite loop.

The i variable is incremented for each loop iteration, but the counter variable is unchanged, so the boolean condition is always true and the loop iterates forever.
},
section_name: "infinite-loops",
order: 300
).first_or_create


# while-loops-with-arrays

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var colors = ["red", "blue"];
i = 0;
while (i < colors.length) {
  console.log(colors[i] + " is pretty")
  i++;
}
```
},
answer:
%q{
<pre>
red is pretty
blue is pretty
</pre>

This loop iterates through every element in the colors array and prints them to the console.
},
section_name: "while-loops-with-arrays",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var funNumbers = [2, 4, 6];
result = 0;
i = 0;
while (i < funNumbers.length) {
  result = result + funNumbers[i];
  i++;
}
console.log(result);
```
},
answer:
%q{
12

This loop sums every number in the funNumbers array.
},
section_name: "while-loops-with-arrays",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var yummy = ["chi", "mi", "changa"];
result = "";
i = 0;
while (i < yummy.length) {
  result = result + yummy[i];
  i++;
}
console.log(result);
```
},
answer:
%q{
chimichanga

This loop concatenates every string in the yummy array into a single string.  The string "chimichanga" is printed to the console.
},
section_name: "while-loops-with-arrays",
order: 300
).first_or_create


# more-arrays

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var nums = [8, 1, 3];
nums.push(99);
console.log(nums);
```
},
answer:
%q{
```javascript
[8, 1, 3, 99]
```

The push method can be used to add elements to the end of an array.
},
section_name: "more-arrays",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var blah = [];
blah.push("bat", "fat");
console.log(blah);
```
},
answer:
%q{
```javascript
["bat", "fat"]
```

The blah variable is initially assigned to the empty array.  The push method is then used to add the "bat" and "fat" strings to the array.
},
section_name: "more-arrays",
order: 200
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var liz = ["silly"];
liz.push("crazy", "funny");
console.log(liz.length);
```
},
answer:
%q{
3

The liz variable is initially assigned to an array with one element.  Two additional elements are added to the liz array, so the length is 3.
},
section_name: "more-arrays",
order: 300
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var rain = [];
rain.push("wet");
rain[0] = "fun";
console.log(rain);
```
},
answer:
%q{
```javascript
["fun"]
```

The rain variable is initially assigned to the empty array.  The "wet" string is then added to the rain array.  The first element of the rain array ("wet") is then replaced with the string "fun".  The rain array is then printed to the console.
},
section_name: "more-arrays",
order: 400
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var awesome = ["programming", "is", "fun"];
console.log(awesome.join(" "));
```
},
answer:
%q{
programming is fun

The join() method concatenates all the elements of the array into a single string.
},
section_name: "more-arrays",
order: 500
).first_or_create


# introduction-to-functions

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
function subtract(x, y) {
  return(x - y);
}
var r = subtract(100, 4);
console.log(r);
```
},
answer:
%q{
96

The subtract function is defined and programmed to take two arguments.  The subtract function is then invoked with the arguments 100 and 4 and the resulting output is assigned to the variable r.  r is printed to the console.
},
section_name: "introduction-to-functions",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
function inchesToCentimeters(n) {
  return(n * 2.54);
}
var r = inchesToCentimeters(10);
console.log(r);
},
answer:
%q{
25.4

The inchesToCentimeters function converts inches to centimeters.  10 inches is equivalent to 25.4 centimeters.
},
section_name: "introduction-to-functions",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
function stringLength(s) {
  return(s.length);
}
var r = stringLength("cool");
console.log(r);
},
answer:
%q{
4

The stringLength() function returns the number of characters in a string.  In this example, the stringLength() function is invoked with the argument "cool" and returns the integer 4.
},
section_name: "introduction-to-functions",
order: 300
).first_or_create


# variable-scope

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var x = "sky";
function moon() {
  return("I live in the " + x);
}
console.log(moon());
```
},
answer:
%q{
I live in the sky

The variable x is not defined within a function, so it is accessible outside of functions and within them.  x is accessible within in the moon() function.
},
section_name: "variable-scope",
order: 100
).first_or_create

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
function pretty() {
  var look = "hipsters";
  return("I like " + look);
}
console.log(look);
```
},
answer:
%q{
This code raises and exception.  The look variable is defined within the pretty() function and is only accessible within the function.  console.log(pretty()) will work because the look variable is being used within the function, but look cannot be accessed outside of the function.
},
section_name: "variable-scope",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var coolCat = "garfield";
function meow() {
  return(coolCat + " likes lasagna");
}
console.log(meow());
console.log(coolCat);
```
},
answer:
%q{
garfield likes lasagna
garfield

The coolCat variable is assigned to the "garfield" string and can be used within the meow() function.  The coolCat variable can also be used outside of the meow() function.
},
section_name: "variable-scope",
order: 300
).first_or_create


# undefined

SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var x = 11;
console.log(x);
```
},
answer:
%q{
11

The variable x is assigned to the value 11 and is then printed to the console.
},
section_name: "undefined",
order: 100
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
var lol;
var zyz;
console.log(lol);
```
},
answer:
%q{
undefined

The variable lol is declared but is not assigned to any value.  When variables are declared, they are automatically assigned to undefined.
},
section_name: "undefined",
order: 200
).first_or_create


SectionQuestion.where(
body:
%q{
What does the following code print to the console?

```javascript
function fullName(x, y) {
  x + " " + y;
}
console.log(fullName());
```
},
answer:
%q{
undefined

The fullName() function does not use the return keyword, so nothing is returned from the function.  JavaScript returns undefined from a function when the return keyword does not specify a return value.
},
section_name: "undefined",
order: 300
).first_or_create

#SectionQuestion.where(
#body:
#%q{
#},
#answer:
#%q{
#},
#section_name: "introduction-to-functions",
#order: 100
#).first_or_create

