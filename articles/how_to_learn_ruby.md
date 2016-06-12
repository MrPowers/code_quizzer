# How to Learn Ruby

Ruby is an excellent programming language and is used frequently with the Rails framework to develop web applications.  Before getting started with Rails, it's a good idea to learn Ruby.

Ruby can be learned with books, online, in a classroom, or with a mentor.  A combination of the three will help you learn the quickest!

## Books

### [The Well Grounded Rubyist 2nd Edition](http://www.amazon.com/Well-Grounded-Rubyist-David-Black/dp/1617291692) (10/10)

The Well Grounded Rubyist is the best book to learn about objects and message sending.  [Messages are more important that objects](http://lists.squeakfoundation.org/pipermail/squeak-dev/1998-October/017019.html) and David Black gives messages the attention they deserve.

David doesn't even introduce the if keyword until page 150!  This is not your typical programming book.

The Well Grounded Rubyist is the best way to level up from a beginner to an intermediate Ruby programmer.

Make sure to read The Well Grounded Rubyist before Practical Object Oriented Design in Ruby and Metaprogramming Ruby.

### [Practical Object Oriented Design in Ruby](https://www.amazon.com/Practical-Object-Oriented-Design-Ruby-Addison-Wesley-ebook/dp/B0096BYG7C/%CC%81) (10/10)

Practical Object Oriented Design in Ruby (POODR) is a masterfully written book on object oriented design.

Programmers cannot predict the future, but we can design code so it can easily be adapted to incorporate future feature requests.  POODR explains how to write well designed code that is easy to change.

POODR talks about message sending a lot so make sure to read [The Well Grounded Rubyist](http://www.amazon.com/Well-Grounded-Rubyist-David-Black/dp/1617291692) first.

### [Metaprogramming Ruby, Second Edition](https://www.amazon.com/Metaprogramming-Ruby-Program-Like-Facets-ebook/dp/B00N9I0RMQ/) (10/10)

Metaprogramming Ruby continues where The Well Grounded Rubyist leaves off.

Metaprogramming is code that writes code.  It's awesome and fun!

The book covers a lot of core Ruby concepts that are critical to understand metaprogramming: Ruby's object model, method lookup, and module.

Once the foundation is laid, basic metaprogramming concepts like define_method and method_missing are covered.

Before you know it, you will be writing a domain specific language with Ruby!

You will be a Ruby expert after reading this book.

### [Programming Ruby 1.9 & 2.0, 4th Edition](http://www.amazon.com/Programming-Ruby-1-9-2-0-Programmers/dp/1937785491) (8/10)

The Programming Ruby book is often referred to as the "PickAxe book" and offers a comprehensive overview of the Ruby programming language.  The PickAxe book is credited with popularizing Ruby outsize of Japan.

PickAxe inspired core Ruby developers like [Jim Weirich](https://en.wikipedia.org/wiki/Jim_Weirich) and [DHH](http://david.heinemeierhansson.com/).

PickAxe is a great book if you've had experience programming in other object oriented languages.  This is not a beginner book.

### [Beginning Ruby](http://www.amazon.com/Beginning-Ruby-Novice-Professional-Experts/dp/1430223634) (7/10)

Beginning Ruby was written in 2011 by [Peter Cooper](http://peterc.org/), an influental member of the Ruby community.

Beginning Ruby is a bit scattered and jumps into technical concepts very quickly, so it's not suitable for beginners.

An experienced programmer would learn a lot from Beginning Ruby, but there are other books that are much easier to follow.

## Online Learning Resources

### Codecademy (7/10)

Codecademy gives little descriptions of key programming concepts and provides a Ruby shell to evaluate your knowledge during each step.  The lessons are build towards people that are not familiar with Ruby and have never programmed before.

The course is for beginners, but the code gets scary and complex quickly.

![Scary Ruby code](/articles/how_to_learn_ruby/scary_methods.png)

The first line in the method (`puts "That's not an integer." unless n.is_a? Integer`) uses a lot syntactic sugar and would even be difficult for experienced programmers that are not familiar with Ruby to read.

Codecademy is demonstrating how this code can be broken up with methods, but this is still very scary for newbies.

Codecademy also jumps into procs and lambdas quickly.  New Ruby programmers don't need to know how to yield with parameters.

![Scary Ruby code](/articles/how_to_learn_ruby/yeilding_with_parameters.png)

Parts of Codecademy are great and other parts are terrifying and should be skipped.  You might not know what parts should be skipped so the course might make you feel bad.


### Learn Ruby the Hard Way (8/10)

Learn Ruby the Hard Way is written by the controversial author Zed Shaw.  He wrote [Rails is a Ghetto](http://harmful.cat-v.org/software/ruby/rails/is-a-ghetto) in 2007 and [people didn't really like it](https://news.ycombinator.com/item?id=93984).  Nonetheless, people seem to love his books ([Amazon link](https://www.amazon.com/Learn-Ruby-Hard-Way-Computational/dp/032188499X/ref=sr_1_1?ie=UTF8&qid=1465492271&sr=8-1&keywords=learn+ruby)).

Zed is right that learning to program requires a lot of [practice and persistence](http://learnrubythehardway.org/book/intro.html#a-note-on-practice-and-persistence).  Repetition is how you learn.

The first 39 lessons are approachable and the course gets much harder when modules, classes, and objects are introduced in [lesson 40](http://learnrubythehardway.org/book/ex40.html).  If example 40 scares you, just stop reading and move on to the next learning resource.

Zed wraps up the book with some bizzare [Advice from an Old Programmer](http://learnrubythehardway.org/book/ex40.html).  I love working as a full-time programmer and absolutely do not agree with "Programming as a profession is only moderately interesting".  I think programmers at technology companies are respected and do not agree that "People who can code in the world of technology companies are a dime a dozen and get no respect".

Use Zed's learning resources and ignore his angry rants.

### [Try Ruby](http://tryruby.org/) (9/10)

Try Ruby is a 15 minute tutorial on the very basics of Ruby.  All code is run in the browser.

Unlike the other tutorials, Try Ruby isn't scary!  They ease you into the material.

In level 5 the tutorial covers the `Dir` module, which is confusing because the code is running the browser and the file system isn't visible.

### [Ruby Lang Quickstart](https://www.ruby-lang.org/en/documentation/quickstart/) (6/10)

The Ruby Lang quickstart tutorial starts off as a promising interactive Ruby console (`irb`) based introduction to the language and quickly becomes too complicated.

The tutorial quickly asks you to write an 11 line class in your `irb` console:

```
irb(main):024:0> class Greeter
irb(main):025:1>   def initialize(name = "World")
irb(main):026:2>     @name = name
irb(main):027:2>   end
irb(main):028:1>   def say_hi
irb(main):029:2>     puts "Hi #{@name}!"
irb(main):030:2>   end
irb(main):031:1>   def say_bye
irb(main):032:2>     puts "Bye #{@name}, come back soon."
irb(main):033:2>   end
irb(main):034:1> end
```

This code is certain to baffle a newbie programmer.  An experienced programmer would prefer to write all this code in a text editor.

This tutorial can be used by an inexperienced programmer, but newbies should stay away.

### [RubyMonk](https://rubymonk.com/) (7/10)

RubyMonk jumps right into objects in the first lesson.  This course is suitable for experienced programmers and beginners should stay away.

![Introduction to Objects](/articles/how_to_learn_ruby/rubymonk_object_intro.png)

Once you are comfortable with the fundamentals of Ruby, this is a great course to level up.

## Ruby Bootcamps

Section will be added soon...

## Get a Mentor

The Ruby community is awesome and almost every programmer at a meetup is happy to help newbies get started.  Go to a Ruby meetup in your local area and be social.

A lot of newbies are scared to go to meetups, especially when there will be a talk on a highly technical topic.  Overcome your fear and start getting involved in your local community!

Other newbies like to procastinate going to meetups until they are more experienced.  Having a mentor is most valuable when you are just starting out.  A small bug might take you 8 hours to figure out alone and less than a minute with a mentor.

People at Ruby meetups are typically employed as Ruby developers at local companies.  After you go to meetups for a few months, they can help you find a job.  It's always easier to get a job with support from a friend than apply online with the hundreds of other people.

