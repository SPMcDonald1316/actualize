# Ruby Methods Practice (the second)

Today we're going to continue to get familiar with some ruby methods that are popular and great to know about! These problems will also help sharpen your technical interview skills and algorithm solving abilities. 

#### Exercise

Solve the below problems in the `ruby_methods_2_solution.rb` file inside this folder. Remember to break down the problems into smaller steps when you get stuck. Don't worry about finding the most elegant or clever solution - focus on getting it to work!

1. Read about the Ruby `select` method. Then refactor the code below using `select`.
```ruby
numbers = [1, 2, 4, 2]
even_numbers = []
numbers.each do |number|
  if number % 2 == 0
    even_numbers << number
  end
end
p even_numbers
```


2. Use the `select` method with the following array of hashes
```ruby
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
to create a new array of hashes that only contain movies with a rating less than 4.0.


3. Use the `select` method combined with the `map` method to convert the array of hashes
```ruby
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
```
[2, 3]
```

4. Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
```ruby
p palindrome?("tacocat")   #=> true
p palindrome?("wazzzzup")  #=> false
```


5. Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
```ruby
p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
```

#### Deliverable
Complete the exercise in the `ruby_methods_2_solution.rb` file in this folder. Navigate to your independent practice repository and git add, commit, and push up to your branch!

