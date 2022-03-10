# 1
# Read about the Ruby `reduce` method. Then refactor the code below using `reduce`.
# ```
# numbers = [1, 2, 4, 2]
# sum = 0
# numbers.each do |number|
#   sum += number
# end
# p sum
# ```

numbers = [1, 2, 4, 2]
p numbers.reduce(:+)


# 2
# Write a method called `scrabble_score` which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:
# ```
# points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}
# ```
# Use the `reduce` method to perform the computation in your scrabble_score method. The code should work as follows:
# ```
# p scrabble_score("scholar")  #=> 12
# ```


def scrabble_score(string)
  points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}
  string.chars.map { |letter| points[letter.downcase] }.reduce(:+)
end

p scrabble_score("scholar")  #=> 12


# 3
# Use the methods `map`, `select`, and `reduce` with the following array of hashes: 
# ```
# ```
# and calculate the total amount of words for all items of type `:book`. The result should be
# ```
# 3906
# ```

items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
  {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
]

books = items.select { |item| item[:type] == :book }
p books.map { |book| book[:words] }.reduce(:+)


# 4
# Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.

def mutation?(string_one, string_two)
  all_there = true
  string_two.chars.map { |letter| all_there = false unless string_one.include?(letter) }
  all_there
end

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false


# 5
# Write a method called `sum_of_range`, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.

def sum_of_range(range)
  range.sort! # easiest way to max sure it's in min max order
  # range = [range[1], range[0]] if range[1] < range[0] # longer way to check min/max order
  (range[0]..range[1]).reduce(:+)
end

p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10