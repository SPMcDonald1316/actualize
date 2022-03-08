![Wrecking Ball](resources/wrecking_ball.jpg)

<h1 style="color: red;">
Bonus Exercise - Destructive Methods
</h1>

Almost everything in Ruby is an object and every object has an object id. This is how Ruby knows which unique object it's looking at in any given situation.

When we refer to a method as "destructive" we mean that it changes the "thing" without changing the object id.

Even though it doesn't change the function of a method, there is a convention in Ruby to end a destructive method's name with a `!` - otherwise called a "bang". You may see this as you look through Ruby documentation where there is a method and an accompanying method that has the same name but ends with a bang (ex: [String#reverse](https://ruby-doc.org/core-2.5.1/String.html#method-i-reverse) and [String#reverse!](https://ruby-doc.org/core-2.5.1/String.html#method-i-reverse-21))

This challenge will have you build your own destructive methods.

# Research

### Understanding Object Ids

Follow [this object id example](examples/object_id_example.rb). Copy sections into irb to see how they work.

Read documentation on 
- [Ruby Docs - #object_id](https://ruby-doc.org/core-2.5.1/Object.html#method-i-object_id)
- Look at the #replace method. This is a different method for each class that uses it so look for the method on Array, String and Hash pages in Ruby Docs

# Commit 1 - Pseudocode

You are going to write a method that translates a series of words into a decoded word by returning the first letters of each word as a single string. You may know of this as an acrostic.

Example: 

```ruby
p acrostic_decoder("Does one, yodel on under resentment, when offsprings refuse kamp?")
```

This example should print "Do your work".

Note: In our method, any punctuation denotes the separation of words.

Write your input, output and steps to create your method.

# Commit 2 - Non-Destructive Solution

Write your solution for a non-destructive method.

# Commit 3 - Destructive Solution

Write a destructive version of your method. Verify that the string returned by the destructive method has the same object id as the string passed into the method.

# Bonus in a Bonus

Make a destructive enumerable from your `Replace Ruby Enumerables` exercise, such as `another_map!`, `another_find!` or `another_reject!`