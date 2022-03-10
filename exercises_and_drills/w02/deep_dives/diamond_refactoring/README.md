# Exercise - Diamond Refactoring

![necklace](resources/necklace.jpg)

An advertising firm for [De Beers](https://www.debeers.com) has asked your team to create a method that takes takes a word and returns a string to print the word in a diamond design. Each letter is printed as a separate diamond, starting at "A" and expanding with each letter, then reducing back to "A". The return value must be a single string with escaped characters.

Example Letter:

```ruby
# The letter "C" is translated and then printed as 

  A
 B B
C   C
 B B
  A
```

The point of this exercise is actually not to write the code. It's already written. The point of this exercise is to refactor the code that's written. You should not change the function of the code; just clean it up and make it run smoothly.

# Commit 0 - Research

### Refactoring

Look at the [Refactoring](../../Resources/Refactoring.md) section of resources

### Escape characters

An escape character is a character which invokes an alternative interpretation on subsequent characters in a character sequence. Here are some examples

- `\"` – double quote
- `\\` – single backslash
- `\a` – bell/alert
- `\b` – backspace
- `\r` – carriage return
- `\n` – newline
- `\s` – space
- `\t` – tab

example:

```ruby
puts "Hello\t\tworld"
 
puts "Hello\b\b\b\b\bGoodbye world"
 
puts "Hello\rStart over world"
 
puts "1. Hello\n2. World"
```

result

```
$ double-quotes.rb
Hello   world
Goodbye world
Start over world
1. Hello
2. World
```

The backslash followed by these characters act as if they are one Metacharacter. Try using one or two of them in a string and then printing with `puts`, and watch what happens. Then change the print keyword to `p` on the same string and run it again; you'll see the literal characters instead of the alternative interpretation.

# Commit 1 - Run then Walk

### Run the Code

Run the code in the terminal and get a good grasp of what the `diamond_printer` method returns. You can play around with the runner code to see how giving the method a different argument changes the return value of the method.

### Walk Through Each Line

Walk through each line and put a comment at the end of each line describing what that line is doing. Especially note the function on lines 6, 9, 68, 69, 72, 73, 77 - 81, 103, 127, and 171. Add a comment at the end of each line listed in the last sentence that describes what happens for that line.

Answer the questions posed as comments in the code. Submit your annotations to the original code.

> Manage your time: You should not spend MORE than 1.5 hours commenting on the lines of code before moving to the next step. You will need to do multiple passes to figure out what each line of code is doing. The first pass is to get an outline. If you have trouble "time boxing" I recommend you look at this book [The Pomodoro Technique](https://www.focusboosterapp.com/the-pomodoro-technique)

# Commit 2 - Write Tests

Writing a test can be as simple as writing some code that tests that the expected return value of the method does not change even after the refactoring. Writing tests can be tricky for something that prints to the screen. Observe that this method returns a string with "next line" escape characters. Change the runner code from `puts` to `p` for an example string that can be used for your tests.

Hint: If you get stuck, you can look at an example test [here](examples/example_test.rb)

# Commit 3 - Refactor Solution

Keep the original code with annotations for reference but comment it out. Copy the original code into the `Commit 3 - Refactor Solution` section.

The most important part of refactoring is to not change how the method functions, but only clean up the code. The tests you created in `Commit 2` can be run to verify that the return value of the `diamond_printer` method has changed at all.

Follow your nose. Let the [code smells](../../Resources/Refactoring.md) lead the way.

![Follow Your Nose](resources/toucan_sam.jpg)

# Bonuses

### Bonus 1 - Make a necklace

Change the refactored solution so that the diamonds of each letter connect at the tip to resemble a necklace. 

>Note: In this section you are changing the function of the method. You should ask yourself once you complete this bonus, "How easy would it have been to add this functionality to the original (unrefactored) code?"

Example: if you gave the string 'Debbee' it would print:

```
    A   
   B B  
  C   C 
 D     D
  C   C 
   B B  
    A   
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A    
    A 
   B B
    A 
    A 
   B B
    A 
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A    
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A   
```

### Bonus 2 - Code Golf

There are competitions for the taking code and refactoring it to make it as concise as possible. Depending on where you play, the rules may be a little different but the generic idea is the same. The solution that takes the least number of characters wins, the same as the least number of strokes in golf.

Look at this [Code Golf - Stack Exchange]("https://codegolf.stackexchange.com/") site for example.

Additional rules can be "least memory space" that the file takes up, "least number of milliseconds" that the program runs, etc. in addition to the least number of characters in order to settle a tie.

No one actually writes code like this in production. The code golf solutions are often too messy for it to be effectively maintained. However, it can be fun and helpful to understand how far you can really push this concept of making your code more concise.

