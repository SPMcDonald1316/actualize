# Params

The two important parts of a web request are **urls** and **verbs**. We use both to send a unique combination to the server, and it delivers a web response! We can use parameters to send additional user input along with a web request besides just the url and verb combintation.

## Query Parameters

Let's see query params in action. Go to [https://google.com/search?q=kittens&tbm=isch](https://google.com/search?q=kittens&tbm=isch)

* `?` denotes the beginning of the query parameters
* `=` indicates an assignment; anything to the left is the key, while the right represents the value
* `&` allows for the input of multiple parameters, separating each

Example: localhost:3000/home?key1=value1&key2=value2

#### Let's make a new app to practice params! 

In your Actualize directory: 

```bash
rails new params-practice-app
cd params-practice-app
subl .
```

Make it so that a user can enter in a phrase using a query parameter and the result is a json view that outputs that phrase in all caps.
HINT: You'll need to create a new route, a Params controller, and a view. 


## URL Segment Parameters

URL Segment Parameters allow us to use a particular segment of the url as a wildcard. For example, if we declare a segment as a wildcard in the routes like this - localhost:3000/home/:wildcard, then a user can create urls like this:

1. localhost:3000/home/hello
2. localhost:3000/home/goodbye
3. localhost:3000/home/123

Rails knows that the segment is a wildcard is because of the colon in the routes file, but you can call that segment whatever you want - :wildcard, :message, :id, :purple_hippo, etc.

#### Let's make a thing!

In the same app as above, create the same functionality but using url segment parameters instead. 


## Body Parameters

Body parameters don't use the url at all, but instead send parameters separately as the body part of a web request. We use a POST request instead of a GET, which is more secure (not displayed in the url bar). 

We can't use our browsers to make a POST request so we'll use Insomnia to send it!

#### Sending body params

In the same app as above, create the same functionality but using body parameters instead. 
HINT: In the body tab in Insomnia, you'll want to enter a key value pairing, and you'll want to make sure this line is in your ApplicationController:

```ruby
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end
```

#### Exercise

1. In your movie-app create a route that will display a single actor using a query parameter
2. In your movie-app create a route that will display a single actor using a url segment parameter
3. In your movie-app create a route that will display a single actor using a body parameter (use Insomnia)


### Deliverable
Create a new repository on github and connect it to your local `params-practice-app` repository. Git add, commit, and push to the master branch to put your new rails project on github. Update your existing `movie-app` on github. 

Then, go to the params_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
