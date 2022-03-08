# 1
# Read about the Ruby `select` method. Then refactor the code below using `select`.
# ```
# numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#   if number.even?
#     even_numbers << number
#   end
# end
# p even_numbers
# ```

numbers = [1, 2, 4, 2]
p numbers.select { |number| number.even? }


# 2
# Use the `select` method with the following array of hashes
# ```
# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# to create a new array of hashes that only contain movies with a rating less than 4.0.
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p movies.select { |movie| movie[:rating] < 4.0 }


# 3
# Use the `select` method combined with the `map` method to convert the array of hashes
# ```
# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
# ```
# [2, 3]
# ```

movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p movies.select { |movie| movie[:title].downcase.include?("b") }.map { |movie| movie[:id] }


# 4
# Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
# ```
# p palindrome?("racecar")   #=> true
# p palindrome?("wazzzzup")  #=> false
# ```

def palindrome?(string)
  # string.reverse == string
  reverse_string = ""
  split_string = string.chars
  split_string.size.times { reverse_string << split_string.pop }
  return true if reverse_string == string
  false
end

p palindrome?("tacocat")   #=> true
p palindrome?("wazzzzup")  #=> false


# 5
# Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
# ```
# p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
# p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
# ```

def split_array(array, number)
  new_array = []
  # array.each_slice(number) { |slice| new_array << slice } # this is one way of doing it
  new_array << array.shift(number) until array.empty? # another solution
  new_array
end

p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
