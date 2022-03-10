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
