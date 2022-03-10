### Display posts from a subreddit:

```ruby
require "http"

system "clear"
puts "Welcome to the Reddit app!"
print "Enter a subreddit name: "
subreddit_name = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit_name}.json")
posts = response.parse["data"]["children"]

posts.each do |post|
  puts "- #{post["data"]["title"]}"
end
```

### Display posts with option to see comments for a post
```ruby
require "http"

system "clear"
puts "Welcome to the Reddit app!"
print "Enter a subreddit name: "
subreddit_name = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit_name}.json")
posts = response.parse["data"]["children"]

posts.each do |post|
  puts "- #{post["data"]["title"]}"
end

print "Enter a number to see the comments: "
input_index = gets.chomp.to_i

post = posts[input_index]
response = HTTP.get("https://www.reddit.com#{post["data"]["permalink"]}.json")
comments = response.parse[1]["data"]["children"]

comments.each do |comment|
  author = comment["data"]["author"]
  body = comment["data"]["body"]
  puts "Author: #{author}"
  puts body
  puts
end
```

### Bonus: Using tty-prompt gem
```ruby
require "http"
require "tty-prompt"

prompt = TTY::Prompt.new

system "clear"
puts "Welcome to the Reddit app!"
print "Enter a subreddit name: "
subreddit_name = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit_name}.json")
posts = response.parse["data"]["children"]

choices = []
posts.each do |post|
  choices << "- #{post["data"]["title"]}"
end

answer = prompt.select("Select a post to see the comments", choices)
input_index = answer.split(".")[0].to_i

post = posts[input_index]
response = HTTP.get("https://www.reddit.com#{post["data"]["permalink"]}.json")
comments = response.parse[1]["data"]["children"]

comments.each do |comment|
  author = comment["data"]["author"]
  body = comment["data"]["body"]
  puts "Author: #{author}"
  puts body
  puts
end
```