# JavaScript Web Requests

Making web requests from JavaScript is sometimes referred to as AJAX, which is a made up buzzword (Asynchronous JavaScript and XML), but you still may hear it today.

Just like we installed the HTTP gem to help make web requests in Ruby, we will install a library called axios to make web requests in JavaScript.

Note that like Ruby, JavaScript is capable of making web requests without an external library, but it would take ~10 lines of code to accomplish the same thing with one line of code with an external library.

### Setup

In your movie-app, make sure you have an `index.html` file in your /public folder (you should from previous homework).

View it in the browser by running your rails server, then visiting http://localhost:3000. 

This works because it's specifically called index.html and inside the /public folder (Rails looks for this)

If you don't have this file, make sure to go back to the [css_frameworks](../css_frameworks) lesson and make one. 

### Walkthrough

1. In the movie-app, create a new file called `index.js` in the /public folder and link to it in the HTML (use the defer attribute, which makes sure the HTML is loaded before the JavaScript is run):
	
	```html
	<script src="index.js" defer></script>
	```
2. Install axios by adding the following to `index.html`:

	```html
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	```
	
	**Note:** Make sure this script goes before the index.js script. Can you explain why?
	
3. Use axios in `index.js` to get JSON data from Rails app:

	```js
	/* global axios */

	axios.get("http://localhost:3000/api/actors").then(function(response) {
	  var actors = response.data;
	  console.log(actors);
	});
	```
	
	JavaScript is different than Ruby in the sense that it is asynchronous - the code doesn’t always wait until a line is done to execute the next one. 
	
	In general, if a task will take some time in JS it gets put in a queue and the rest of the code executes without waiting. This is very different than how Ruby works (which executes line by line)!
	
	This is why the axios code is written this way. It is using a callback (technical term) which will run once the response is ready. 

	**Note:** The comment at the top helps the linter know that axios is defined elsewhere.
	
4. Open http://localhost:3000 and check the JavaScript console. Do you see data?


### Exercise
Create a JavaScript frontend view for your movies.

1. Make a `movies-index.html` file in your /public folder with some basic HTML (no styling needed) to display movies. 

2. Make a `movies-index.js` file in your /public folder and include it in your new HTML:

	```html
	<script src="movies-index.js" defer></script>
	```

3. Use JavaScript to request the movies and display them in your console! You’ll need to install axios by including the script

	```html
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	```

4. Open http://localhost:3000/movie-index.html (you can load any html file in your /public folder by calling it this way!) and check the JavaScript console. Do you see movie data? 


#### Deliverable
Update your `movie-app` repository on github by doing a git add, commit, and push to the master branch. 

Then, go to the js_web_requests_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```