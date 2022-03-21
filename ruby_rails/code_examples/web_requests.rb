require 'http'

# Simple get request
# response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

# p response.parse

# Basic weather app
# user enters a city
# show the weather in that city
# display 'It is current #{weather} in #{city}'

# puts "Enter a city to see current weather."
# city = gets.chomp

# response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=deactivated").parse


# p ("It is #{response['main']['temp']} degrees and #{response['weather'][0]['description']} in #{response['name']}.")


# Dictionary lookup
# build a terminal dictionary app
# program should ask the user to enter a word, then use the wordnik api to show definition
# display the top example and pronunciation
# place program in a loop to enter multiple word or q to quit
# use wordniks audio api to get the first fileUrl to open in the browser and pronounce the word

puts 'Enter a word:'
word = gets.chomp

response_def = HTTP.get("http://api.wordnik.com/v4/word.json/#{word}/definitions?api_key=AN_API_KEY").parse
response_example = HTTP.get("http://api.wordnik.com/")

pp response[0]['text']

