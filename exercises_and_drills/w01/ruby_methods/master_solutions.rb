# 1
# Research the Ruby `map` method. Then refactor the code below using `map`.
# ```
# numbers = [1, 2, 4, 2]
# doubled_numbers = []
# numbers.each do |number|
#   doubled_numbers << number * 2
# end
# p doubled_numbers
# ```

numbers = [1, 2, 4, 2]
p numbers.map { |number| number * 2 }


# 2
# Use the `map` method to convert the array of hashes
# ```
# items = [
#   {id: 1, body: 'foo'},
#   {id: 2, body: 'bar'},
#   {id: 3, body: 'foobar'}
# ]
# ```
# into an array that only contains the ids. The result should look like:
# ```
# [1, 2, 3]
# ```

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

p items.map { |item| item[:id] }


# 3
# Use the `map` method with the `to_h` method to convert the array of hashes
# ```
# fruits = [
#   {"name" => "apple", "color" => "red"},
#   {"name" => "banana", "color" => "yellow"},
#   {"name" => "grape", "color" => "purple"}
# ]
# ```
# into a single hash where the keys are the names and the values are the colors. The result should look like:
# ```
# {"apple" => "red", "banana" => "yellow", "grape" => "purple"}
# ```

fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

p fruits.map { |fruit| [fruit["name"], fruit["color"]] }.to_h


# 4
# Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!
# ```
# p reverse_a_string("abcde")  #=> "edcba"
# ```

def reverse_a_string(string)
  word = ""
  letters = string.chars
  letters.size.times { word << letters.pop }
  word
end

p reverse_a_string("abcde")


# 5
# Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# ```
# p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
# ```

def find_longest_word(string)
  sentence = string.split
  longest_word = ""
  sentence.each do |word|
    word.gsub!(/\W/, "") # filters out non alphanumeric
    longest_word = word if word.length >= longest_word.length
  end
  longest_word
end

p find_longest_word("What is the longest word in this phrase?")

