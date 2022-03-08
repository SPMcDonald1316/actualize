
# This example shows the "match operator" that looks like this =~
# You can use the match operator to find if the pattern exists with in a string.
# It will return the index of where it finds the first match to a regular expression pattern, if no pattern is found the match operator returns nil.

# /\A[@]/ is a regex pattern looking for an "@" character at the beginning of the string.
# this will return nil because that pattern is not found with in the string, "stanford"
p "stanford" =~ /\A[@]/

# /\A[s]/ is a regex pattern looking for a "s" character at the beginning of the string.
# this will return 0 because that pattern is found at the first character in the string, "stanford"
p "stanford" =~ /\A[s]/


# So if the pattern is found this returns nil
# We can use this in an if statement like this.

example_string = "bob5"

if (example_string =~ /\d/) != nil
  puts "this string contains a number"
end

# Run the code above then, remove the 5 and run it again. What changed?
# Check https://rubular.com/ to varify the pattern, /\d/