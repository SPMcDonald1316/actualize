# Ruby Methods Practice

Today we're going to get familiar with some ruby methods that are popular and great to know about! These problems will also help sharpen your technical interview skills and algorithm solving abilities. 

#### Exercise

Solve the below problems in the `ruby_methods_solution.rb` file inside this folder. Remember to break down the problems into smaller steps when you get stuck. Don't worry about finding the most elegant or clever solution - focus on getting it to work!

1. Research the Ruby `map` method. Then refactor the code below using `map`.
```ruby
numbers = [1, 2, 4, 2]
doubled_numbers = []
numbers.each do |number|
  doubled_numbers << number * 2
end
p doubled_numbers
```

2. Use the `map` method to convert the array of hashes 
```ruby
items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]
```
into an array that only contains the ids. The result should look like:
```ruby
[1, 2, 3]
```


3. Use the `map` method with the `to_h` method to convert the array of hashes
```ruby
fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]
```
into a single hash where the keys are the names and the values are the colors. The result should look like:
```ruby
{"apple" => "red", "banana" => "yellow", "grape" => "purple"}
```

4. Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!
```ruby
p reverse_a_string("abcde")  #=> "edcba"
```

5. Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
```ruby
p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
```

#### Deliverable
Complete the exercise in the `ruby_methods_solution.rb` file in this folder. Navigate to your independent practice repository and git add, commit, and push up to your branch!

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```

