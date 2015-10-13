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

#SectionQuestion.where(
#body:
#%q{
#},
#answer:
#%q{
#},
#section_name: "introduction-to-booleans",
#order: 100
#).first_or_create

