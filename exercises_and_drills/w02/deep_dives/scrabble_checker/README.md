# Exercise - Scrabble Word Permutations Checker

![tiles](resources/wood-tiles.jpg)

You are working on a team at your company to create a digital version of the [Scrabble game](https://scrabble.hasbro.com/en-us). 

Building the Scrabble game is a large task made up of many smaller pieces. One such piece is that the player is given a number of letter tiles and they must make a word with those given letters. This is referred to as a "word permutation".

A word permutation is the way a set of letters can be reordered and arranged. We will refer to the complete set of available characters as the **base word**.  Note that the player doesn't have to use all the letters from the base word to form a word permutation; one can use just some of the available characters from the base word. 

Also note that this base word is not required to be an actual word from the dictionary; it can be a random set of tiles in a given order. So, your job is not to check for real words at all; there could be another person on the team with that task. Your job... if you choose to accept it, is to create a Ruby method that can accept two words and determine whether the second word is a permutation of the first word (base word). 

Your method should return `true` if the second word is a permutation of the first word (base word) and return `false` if the second word is not a permutation of the first word (base word).

In addition, when you call your method you will eventually use the Ruby tool `ARGV` in the runner code. This will allow you to pass in your two arguments from the command line.

## Research

`ARGV` takes in command line arguments while running your Ruby file from the terminal.

You can run the [`argv_example.rb`](examples/argv_example.rb) with this command below. This example is passing in three arguments from the command line. Test it out.

```
ruby argv_example.rb rupert ariel tennant
```

Try changing the words that follow the file name in the command line. Can you explain what is happening? (You do not need to submit your answer.)

### Further ARGV Research

If you still have questions, you can watch this video for a quick explanation of using ARGV in a Ruby file.

- [Ruby tutorial - pass in command line arguments](https://www.youtube.com/watch?v=ork0GTSTojA)

or read how it functions

- [Explanation of ARGV](http://jnoconor.github.io/blog/2013/10/13/a-short-explanation-of-argv/)

## Commit 1 - Pseudocode

![Rspec](resources/rspec.jpg)

### RSpec

This is a new concept. You don't have to completely understand RSpec to use it. We will talk about testing suites and RSpec in a lecture at a later time. For now, there is an RSpec file that runs Ruby tests for your method found in this folder. To use this tool, first install the `rspec` gem with the terminal command:

```
gem install rspec
```

You should then run the `rspec` terminal command:

```
rspec permutation_spec.rb
```

When you execute the command above, it will run a series of tests that check the `permutation_checker` method. You will see messages appear in the terminal explaining what features the method is expected to cover. Use the printed messages as a guide.

***

Read the RSpec tests to help you write your pseudocode.

- Input - Write down the type of data you need to run your method
  - Include examples for all possible input types
- Output - Write down the type of data you expect to be returned by your method
  - Give an example you expect to be returned for each of your example inputs
- Write a list of logical steps necessary to solve this problem

## Commit 2 - Initial Solution

In addition to your pseudocode. You will run the RSpec tests and read the messages that RSpec outputs. If the message is telling you about an error or failure, change your method to make the tests pass so that the message goes away when you run the RSpec command again. Test often as you make changes to your solution.

## Commit 3 - Write Runner Code / Tests

Add runner code to call your method.

Start with some code that will tell you if the method will pass or fail.

Examples:

```ruby
p permutation_checker("tubular", "lab") == true
p permutation_checker("tubular", "excellent") == false
```

These should test different inputs than what is covered in the RSpec file. See if you can catch a scenario that the RSpec tests failed to check.

## Commit 4 - Refactor Solution

Copy and paste your initial solution into the `Refactored Solution` area, then comment out your initial solution. Refactor your solution according to the [refactoring guidelines](../../Resources/Refactoring.md).

Run RSpec again. If your solution is properly refactored, you will not receive any error messages from RSpec.

## Commit 5 - Change Runner code

Change your runner code to use `ARGV` to take in arguments from the command line.

<div style="margin: 60px;"></div>

![ruby saw](resources/ruby_saw.png)

***
***

# Bonus

## Bonus 1 - Second Method

- Write a second method that accepts multiple possible permutations as the second argument and then uses your `permutation_checker` method to detect which possible permutations are correct and returns a list of those words.
- You will need to change your runner code to call this bonus method.

## Bonus 2 - Change ARGV

- An alternative to ARGV is the default global variable, `$*`. Try changing ARGV to this dollar splat global variable and run your code again.

## Bonus 3 - Add RSpec

- Write your own RSpec file for the second method. This will take research and playing around with the RSpec code. I recommend using this [Cheatsheet](https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf).
