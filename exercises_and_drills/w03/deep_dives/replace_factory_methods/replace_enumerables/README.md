![Blocks](resources/blocks.jpeg)

# Exercise - Replace Ruby Enumerables

Many times we rely on Ruby's factory methods to get the job done quickly. However, there are times that a method is not available. Maybe it's a coding exercise that restricts you, or the method available gets close but doesn't actually do what you need it to do. The easiest way to start is to replicate the logic of preexisting methods because you know exactly what they need to do. You are going to write your own enumerables today from scratch.

# Research

### Extending Classes

You can add to or extend any class in Ruby. Somewhere in the base code that is running Ruby, there is a class that defines `Integer`, `String` and `Hash`. You can add your own methods to those factory made Ruby classes. see this [Extending Class Example](examples/extending_classes_example.rb)

### Self Keyword

The `self` keyword is special as it gives you access to the object a method is called on when called inside of a method. Note: It will change depending on the context where it is called. For now, just know how it works inside of an instance method. See this [Self Keyword Example](examples/self_keyword_example.rb)

### Yield Keyword

The `yield` keyword is another way of giving dynamic function to your method. Parameters allow you to pass in data to your method to affect how the method will run. The `yield` keyword allows you to pass a block of logic into your method. See this [Yield Keyword Example](examples/yield_keyword_example.rb)

### Enumerables

Enumerable methods will typically loop through a list of data (aka. Arrays or Hashes) and most of the time take in a block. The block will define how to interact with that data as the method loops through the data.

Research the [Enumerable Mix-in Here](http://ruby-doc.org/core-2.4.0/Enumerable.html) if you are unfamiliar with its methods.

<br>

# Pseudocode

You will write your own `another_reject`, `another_find` and `another_map` methods. Write the intended function of each method and write your list of logical steps.

> You cannot use the `each` method, but you can use the `another_each` method that is defined on the `replace_enumerables_solution.rb` file.

### Rules

- Use the `another_each` method or the self keyword to create your enumerable method
- You cannot use another factory made enumerable to write your code (example: you cannot use the `reject` or `select` methods to create `another_reject`)

#### Commit 1 - another_reject

- Duplicates what the `#reject` method does. Do not use `#reject` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-reject))
- Returns an array for all elements for which the given block returns a value that evaluates as falsey.

#### Commit 2 - another_find

- Duplicates what the `#find` method does. Do not use `#find` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-find))
- Returns the first element of the array for which the block returns a value that evaluates as truthy. If no element meets the criteria in the block `#another_find` will return `nil`

#### Commit 3 - another_map

- Duplicates what the `#map` method does. Do not use `#map` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-map))
- Returns a new array with the same number of elements as the original array. The elements in the new array are the results of running the block once for every element in the original array.

Example:

```
["a", "b", "c"].map { |letter| letter * 3 }          # returns ["aaa", "bbb", "ccc"]
[5, 10, 20, 35, 50].map { |number| number % 2 == 0 } # returns [false, true, true, false, true]
```

<br>

# Solution

The runner code is already written for you.



