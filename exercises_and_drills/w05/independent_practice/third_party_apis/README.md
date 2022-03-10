# 3rd Party APIs

There are many 3rd party APIs that are public and can be incorporated into our apps! There are a few types of authentication required to use public APIs. There can be no auth, API key, or OAuth required to access the API.

We've already used APIs with no auth like Reddit. In class, we learned APIs with API key auth (like wordnik) as well as OAuth, which we've seen can be increasingly complex. 


#### Exercise

To practice using and accessing 3rd party APIs, we're going to create a new rails app. Make a practice app called `third-party-api-app`.

Choose a third party API from https://github.com/toddmotto/public-apis with either apiKey or OAuth authorization. _NOTE: OAuth will most likely be more difficult, and some APIs are documented better than others!_

Create a backend route and controller action to make an API request to your third party API using the HTTP gem. Test it in your browser!
_NOTE: You’ll need to look at the API documentation to determine how to include the API key! (you can read https://github.com/httprb/http/wiki for examples of how to make HTTP requests with custom headers if you need it)_

Now, use the figaro gem to store your API credentials securely. Use your cheat sheet!


#### Deliverable
Add your third-party-api-app to your github account.

Then, go to the `third_party_apis_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
