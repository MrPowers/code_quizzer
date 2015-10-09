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

