# Exercise - Adding Commas

![so many commas](resources/so_many_commas.jpg)

<span style="color: red;">This is Part 1 of Manipulating Numbers.</span>

Ruby is great in many ways. However, sometimes we need a method that doesn't come built-in to the language. Today, we need to format an integer to include commas so that it's easier to read larger numbers.

### Requirements

1. Your code should produce the appropriate output for the following examples.

Examples:

```ruby
add_commas(5)       # => "5"
add_commas(299)     # => "299"
add_commas(1818)    # => "1,818"
add_commas(9999999) # => "9,999,999"
```

In the example above, if the method `add_commas` is given an argument of the integer `1818`, then it should return a string of `"1,818"`

The goals of these exercises are not only in get better at writing code, but to also learn best practices. In this exercise, we want you to do the following:

1. Break a problem into implementable pseudocode.
2. Model a real world example in Ruby.
3. Iterate through data with loops and variables.
4. Use if statements and conditionals.
5. Work with data structures such as `Integer`, `String`, `Array` and/or `Hash`.
6. Use `p` statements to debug code.

# Commit 1 - Research

Use the `p` keyword to print out the data at different places within your code to help with debugging. Note: `p` works differently then `puts`. `puts` is for attractive user-friendly printing to the terminal, but we are not regular users; we are coders and coders need more information. Run the [p\_vs\_puts_example.rb](examples/p_vs_puts_example.rb) in your terminal.

You do not need to research the following data structures before starting this exercise, but if you do need more information, reference the Ruby docs to find their built-in methods.

- Ruby Docs - The Ruby User Manual
  - [String](https://ruby-doc.org/core-2.4.0/String.html)
  - [Integer](https://ruby-doc.org/core-2.4.0/Integer.html)
  - [Array](https://ruby-doc.org/core-2.4.0/Array.html)
  - [Hash](https://ruby-doc.org/core-2.4.0/Hash.html)
  - [Enumerable](https://ruby-doc.org/core-2.4.0/Enumerable.html)

#### Submit answers to these questions

1. What is an Enumerable in your own words?

<div class="highlight highlight-source-gfm"><pre>
git add --all
git commit -m "research adding commas"
git push origin <code style="color: red;">&lt;your-github-branch-name></code>
</pre></div>

# Commit 2 - Pseudocode

In this exercise, I have given you the first part of your pseudocode by defining your input and output. You'll note that I've clearly stated the data type (String, Integer, Array, Hash, etc.) and provided specific examples of input data and each expected output.

Your job is to complete the `Commit 2 - Pseudocode` section in the solution file. Write your list as plain English steps.

<div class="highlight highlight-source-gfm"><pre>
git add --all
git commit -m "pseudocode adding commas"
git push origin <code style="color: red;">&lt;your-github-branch-name></code>
</pre></div>

# Commit 3 - Initial Solution

Write your Initial Solution. Use `p` statements to help you build your logic. After you are done debugging, remove the `p` statements from your method. By the end of this exercise, the only printing that should happen should be within the runner code.

Write your code in the `Commit 3 - Initial Solution` section.

<div class="highlight highlight-source-gfm"><pre>
git add --all
git commit -m "initial solution adding commas"
git push origin <code style="color: red;">&lt;your-github-branch-name></code>
</pre></div>

# Commit 4 - Write Runner Code / Tests

Write some runner code that tests the following examples:

- no commas, one number character
- no commas, many number characters
- one comma
- many commas

The first test has been provided as an example. Complete the remaining tests in the section labeled `Commit 4 - Write Runner Code / Tests`

<div class="highlight highlight-source-gfm"><pre>
git add --all
git commit -m "runner code adding commas"
git push origin <code style="color: red;">&lt;your-github-branch-name></code>
</pre></div>

# Commit 5 - Refactor Solution

Review your Refactoring Guidelines. Refactor your solution and submit under `Commit 5 - Refactored Solution`

<div class="highlight highlight-source-gfm"><pre>
git add --all
git commit -m "refactor adding commas"
git push origin <code style="color: red;">&lt;your-github-branch-name></code>
</pre></div>

![Comma Comma Comma Comma Comma Chameleon](resources/commachameleon.png)
