<link href="https://fonts.googleapis.com/css?family=Irish+Grover" rel="stylesheet">
# Exercise - Recursion

Recursion is when a method calls itself.

<img style="width: 50%;" src="resources/recursive_pooh_and_tigger.jpg">

# Research

## Iteration vs Recursion

- Iteration is a loop such as `Array#each`, `Integer#times`, a `while` loop, or an `until` loop, etc.
- Recursion is calling a block (or method) inside itself until a condition (base case) is met.

At its core, any problem that can be solved with recursion can also be solved using iteration and any problem that can be solved with iteration can be solved with recursion. We will look at some of the differences as we go through this exercise.

For the next example, you need to know how to find a factorial. A factorial of a number is the product of that number and all numbers down to 1 multiplied together. 

Factorial of 5:

```ruby
5 * 4 * 3 * 2 * 1 #= the factorial of 5 is 120
```

We can write a method that solves the problem iteratively, i.e. with a loop.

```ruby
def factorial(number)
  product = 1

  until number <= 1 # similar to a base case, telling our loop to stop
    product *= number
    number -= 1
  end
  
  product
end
```

...or we can write the solution recursively, e.g. calling the method inside of itself.

```ruby
def factorial(number)
  return 1 if number <= 1 # base case
  number * factorial(number - 1) # calling the method inside itself
end
```

>###### Note in the recursion example

>- The recursion example is a little cleaner, although that is not always the case with recursion. Nor is it the sole reason for choosing one option over the other.
>- The number is being decremented and then passed into the factorial method again.
>- The base case is only evaluated as true the last time the recursion occurs. This is the conditional statement that stops our recursion, known as the "base case".
>- Without a base case, this example would never stop running.

### Recursion Musts

1. Recursion must always run the method inside itself.
2. Recursion must have a piece of data that changes when passed into the next recursion.
3. Recursion must have a base case in order to stop.
 

Look closer at the logic below, and use this code to print out the product each time the method is called.

```ruby
def factorial(number)
  print number
  return 1 if number <= 1 # base case
  print " * "
  number * factorial(number - 1) # calling the method inside itself
end

puts " = #{factorial(5)}"
```
or visually see how the code unfolds:

```
             # The code unfolds down          # Then it rolls back up after hitting the base case
factorial(5) = 5 * factorial(4)               # factorial(4) is equal to 4 * factorial(3) or 4 * 3 * 2 * 1
factorial(5) = 5 * 4 * factorial(3)           # factorial(3) is equal to 3 * factorial(2) or 3 * 2 * 1
factorial(5) = 5 * 4 * 3 * factorial(2)       # factorial(2) is equal to 2 * factorial(1) or 2 * 1
factorial(5) = 5 * 4 * 3 * 2 * factorial(1)   # factorial(1) is equal to 1 (base case triggered)
factorial(5) = 5 * 4 * 3 * 2 * 1                
factorial(5) = 120
```

>##### Recursion Notes

>- Recursion needs a base case
 - A "base case" is the brake that stops your recursion. If you do not have a base case, you enter an infinite loop until you run out of memory. The amount of memory  allotted for the program in the "call stack" acts as a buffer, storing requests that need to be handled. If your program tries to use more memory addresses than the stack has available, you get a stack overflow (where the famous website gets its name). A stack overflow can crash your program or your computer, so be careful. In the current version of Ruby, it usually crashes the program and gives a `stack level too deep (SystemStackError)`. When you see this error, check your base case.
>- Ruby prefers iteration over recursion most of the time. There are scenarios, though, where recursion is the preferred way to solve a problem in Ruby. It is, therefore, a vital tool to become familiar with.
>- Some other programming languages don't have iteration and you must use recursion.

##### Additional Resources on Recursion

- [Recursion Reading](http://ruby.bastardsbook.com/chapters/recursion/) from The Bastard Book of Ruby by Dan Nguyen. It describes recursion in a beautiful way. He views recursion as a division of labor. Look at `The King and His Rocks` if you want to dive in further. This is not necassary to complete the exercise.
- [Recursion Watching](https://vimeo.com/24716767) - basic introduction to recursion by Joshua Cheek.

## Default Arguments

If you want to pass in a default argument, give the parameter a value when you define it. Below, we see the method `signal` has a parameter of fingers and a default value has been assigned of `5`. If this method is called and is passed an argument of `3` then `fingers` will be 3. If this method is called and is not passed an argument, then `fingers` will be 5.

```ruby
def	signal(fingers=5)
   #...
end
```

You can run this [example](examples/default_arguments_example.rb) in the terminal to see how a default argument functions. Please play around with the example code to better understand how default arguments can be applied.

# Commit 1 - Iterative Fibonacci Sequence

The [Fibonacci Sequence](https://www.mathsisfun.com/numbers/fibonacci-sequence.html) is a series of numbers where each number is the sum of the previous two numbers, starting with 0 and 1. 

>Fun Fact:
>
>The Fibonacci Sequence is used to find the Golden Spiral or the Golden Rectangle defined by the Golden Ratio which designers have used for millennia, from ancient Greek architects to the Apple logo.

>![golden ratio examples](resources/golden_ratio.png)

Complete the `fibonacci_iterative` method using iteration to solve the problem. If you need more information on the Fibonacci Sequence, [click here](https://www.mathsisfun.com/numbers/fibonacci-sequence.html) for an explanation.

# Commit 2 - Recursive Fibonacci Sequence

Complete the `fibonacci_recursive` method using recursion to solve the problem.

# Commit 3 - Benchmark

Take a quick glance at the documentation on the [Benchmark Module](https://ruby-doc.org/stdlib-2.5.0/libdoc/benchmark/rdoc/Benchmark.html). This is used to compare how fast methods take to run. Part of the speed is affected by outside events such as other programs running, how much memory is being used, etc. Shut down other programs that are not being used and run your methods a couple of times to get an accurate report.

To run Benchmark...

- Comment out the runner code.
- Uncomment the `require` line at the top of the `fibonacci_solution.rb` file and the benchmark lines in the `Benchmark` section to run each method one billion times. This will compare how fast each method runs and print a report.

# Bonus - Recursive Escape Room

The bonus is charting the quickest way out of <span style="font-family: 'Irish Grover', cursive; font-size: 18px;">"The Room"</span> without falling into the quicksand. You are entering through a door on the left and must exit through the red <span style="color:red;">X</span> on the right using the least number of steps possible.

Create a new file called `escape_room_solution.rb` inside the `recursion` folder for this challenge. Build the escape room following the follwoing sequence. Get "A" to function correctly before moving on to "B", and so on.

>A - In a new file, model a Room using a nested array/nested hash.
>
>B - Use recursion to find how far each square is from the starting space. Print out the numbers in a grid on the terminal.
>
>C - Then choose the shortest path. Identify the shortest path by following the numbers back to the starting place at the door. Store the path somewhere in your data for later use.
>
>D - Highlight the path with colored text or get rid of the other options when printing in the terminal.

![maze without numbers](resources/maze.png)

The brown spaces represent quicksand and cannot be used when finding your way out.







