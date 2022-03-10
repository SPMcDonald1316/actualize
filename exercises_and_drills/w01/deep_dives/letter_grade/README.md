# Exercise - Letter Grades

![grading papers](resources/Grading-Papers.jpg)

You are a PolySci professor at Northwestern University. You have 4 classes a week, each of which have nearly 200 students. You are busy with so many tasks including writing a dissertation on "Why We Should Throw Out The Multi-party System", a board meeting coming up on adding a new wing to Cook Hall, and Professor James won't stop stealing your yogurt from the fridge even though your name was clearly written on the side... Anyway, your mind is on more important things. 

Your approach for grading each student is based on taking the number grade from each test given throughout the course, finding the average (mean) of those numbers, and then converting it into a letter grade. It's the end of the school year and you have to tally up all the grades for about 800 students.

You decide it's easier to automate the process with a method called `#calculate_letter_grade` which calculates the letter grade of a single student for the semester. 

### Requirements

1. The method should accept any number of integers from `0` to `100` as arguments. Each number represents a percentage grade that the student received for a particular test.
2. Each of your courses has a different number of tests so don't assume a certain number of percentage grades will be used to calculate the letter grade.
3. You must find the average (mean) of all percentage grades for one student at a time.
3. The method should return a single letter for that student - `"A"`, `"B"`, `"C"`, `"D"`, or `"F"`. The rubric for the conversion is: A is 90% and up, B is 80% up to 90%, C is 70% up to 80%, D is 60% up to 70%, and F is lower than 60%. For clarification, 79.9999% is still a C grade and 80% is a B grade.

Example: 

```ruby
calculate_letter_grade(90, 100, 95) #=> "A"
```

# Commit 1 - Research

### Parameters vs. Arguments

These terms are mostly used interchangeably and most documentation won't make a distinction. However it is helpful to know the definitions when you are trying to clearly communicate to which one you are referring. 

##### Definitions:

- A `parameter` of a method defines what information a method can accept, that is, "what the method is asking for". This is written in the parentheses after defining the name of the method. A parameter "defines" the conditions of an operation.

    ```ruby
    def method_name(this_is_a_parameter)
    	# the parameter is then used as a placeholder inside the logic of the method.
    end
    ```
    

- An `argument` is a piece of data that you are giving to a method or "passing into a method". This is written when you are running a method. An argument is a "value" passed to a procedure, function or method at the time it is called.

    ```ruby
    #Runner Code
    
    method_name("this string is an argument")
    ```

### Arity

Answer these questions in the `letter_grade_solution.rb` file:

1. What happens when you create a method with no parameters and then pass in an argument?
2. What happens when you have a method that defines 3 parameters and you give it only 2 arguments when it is called?
3. What are the errors you get?

Try this code in a new file and take a second to figure out how this is collecting the arguments.

```ruby
def go(x, *args) # parameters
  puts args.inspect
end

go("a", "b", "c") #arguments
```
This is a `splat parameter` that takes in as many arguments as you give it. This could easily be passed in as a single-array argument, but it can be used as an alternative for a more fluid syntax to pass in an undefined number of arguments. We'll be using the splat parameter for this exercise.

Additional Questions: 

<span style="margin-left: 15px;">4.  Can you get an error by adding or subtracting arguments when using the code above? If so, what errors do you get? <br>
<span style="margin-left: 15px;">5.  What happens when you add more parameters before the splat parameter? Or after the splat parameter?

This subsection is called arity, but what does it mean? [Arity](https://ruby-doc.org/core-2.4.0/Method.html#method-i-arity) is the number of arguments accepted by a method. Check out more information about using splat when asking for and passing in arguments [here](http://blog.honeybadger.io/ruby-splat-array-manipulation-destructuring/). (Limit your time reading this article.)

# Commit 2 - Pseudocode

Before you write your Ruby code, write down the input and output in the solution file (data type and example of each, EX: Array of Integers, `[1,2,3,4]`). Write a list of steps to complete the task in the solution file. Remember to write your steps in plain English and be precise. I provided 3 bullets to start your steps but don't let that limit you; break the problem into as many detailed steps as possible.

# Commit 3 - Initial Solution

Convert your pseudocode into Ruby code. Write code in small stages and use `p` statements to verify that you are producing the desired result. Remember to use a splat parameter for your method to accept an undefined number of arguments.

# Commit 4 - Write Runner Code / Tests

Write several tests that call your method with varying numbers of arguments and expect different letter grades. Write as many tests as you believe will cover all possible scenarios.

# Commit 5 - Refactor Solution

Comment out your initial solution, copy and paste your method into the `Refactor Solution` section, and refactor.

# Bonus 1 - Add + and -

Change the code so it allows for `-` and `+` additions, such as `"C+"` or `"A-"`

# Bonus 2 - Grade the students

Research how to read and parse `CSV` files with Ruby. There is a file called `grades.csv` in the resources folder containing all 800 students, each with their name and their grades. Pull in the information from the file and calculate all letter grades for the students. Note: You may want to display that information in the terminal where you can see the student's name next to their letter grade. You may want to make it print out attractively with color or spacing. You may want to store the calculated letter grades in a second CSV file or JSON file so it can be accessed later. It's up to you: What do you want to do with your processed data?

Extra: There's information [here](http://blog.honeybadger.io/ruby-splat-array-manipulation-destructuring#using-an-array-to-pass-multiple-arguments) on passing an array into a method using splat (the opposite of what we just did).


