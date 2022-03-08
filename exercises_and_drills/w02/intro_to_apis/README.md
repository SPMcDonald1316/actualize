# Intro to APIs

### Reddit app

Every url in Reddit can return JSON instead of HTML by adding a .json to the end of the url! (This is not true for most websites, just Reddit)
https://www.reddit.com/r/programming/
https://www.reddit.com/r/programming.json 

Because of this, it’s completely possible to build a Reddit terminal app! Here’s one example: https://github.com/michael-lazar/rtv 


### Exercise: Build a terminal Reddit app

Do this in the intro_to_apis.rb file in this repository: 

1. Ask the user to enter a name for a subreddit
2. Use the Reddit API to get info for that subreddit (for example, if the user chooses the “programming” subreddit, the API url would be https://www.reddit.com/r/programming/.json)
3. If the subreddit exists, display all the posts


* **Bonus**: After displaying all the posts from a subreddit, allow the user to enter a number to see the comments for a given post. You’ll need to make a second web request to get the comments!
* **Second Bonus**: Use the tty-prompt gem to make more interactive command line prompts! https://github.com/piotrmurach/tty-prompt 

#### Deliverable
Once you're finished with the program you can look at the master_solution.rb file to check your work!

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```