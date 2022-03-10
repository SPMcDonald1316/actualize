## Ruby Class Review

We are going to practice object oriented programming and Ruby inheritance. Do this exercise in the ruby_oop_solution.rb file (in this directory). 

##### Create the following:

1. An `Animal` class, with the following:
  * Attributes:
    * `type`: A string that stores the type of animal
  * Instance Methods:
    * `eat`: Takes a parameter `food` to eat and prints out a message that the <type> of animal is eating `food`
    * `sleep` & `wake`: These two methods should NOT be passed any parameters/arguments. Instead, they will set an instance variable called `@state` to the string `"asleep"` or `"awake"` respectively.

2. A `Person` class, with the following characteristics:
  * Inherits from `Animal`
  * Automatically sets `@type` to `"person"`
  * Adds 3 new attributes (instance variables):
    * age
    * gender
    * name
  * Also, people aren't cannibals! Make sure your `Person` class *overrides* the existing `eat` method (in `Animal`) so that a `Person` cannot eat a `"person"`

#### Stretch Challenges (optional)

* People can speak, and it's good to be polite. Add an instance method called `greet` that prints out a person's name, age, and gender in the following format: "Hi, I'm Teddy. I'm a person, and 156 years old." (Hint: use Ruby string interpolation - look it up if you don't remember how!)


#### Deliverable

Write your solution in the ruby_oop_solution.rb file and push to your branch to github! Only check the master_solution.md file if you really need a hint or after you're finished!

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```