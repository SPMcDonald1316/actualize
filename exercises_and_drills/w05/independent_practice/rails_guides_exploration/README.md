# Exploring the Rails Guides

Up to now we have been building a rails api or backend app.

We have learned how to create a frontend using HTML instead of JSON, as rails has the ability to render either file type. The full-stack approach - where the app is responsible for the backend database as well as the frontend HTML all in one - is a useful approach in some scenarios. Note that it’s either or - either we’re displaying JSON or we’re displaying HTML. (This is similar to the way Reddit’s website works!).

We are now going to utilize the skill of reading documentation to learn about a new concept in rails called scaffolding. Rails scaffolding is a way to generate many pieces of a resource in just one single step. It can create models, views, controllers, and more for a single resource very quickly! 


### Exercise 

This will be a self led exercise, where you'll follow the rails documentation to build an app using scaffodling. 

You'll first need to:

```bash
rails new scaffolding-app
```

Then, start <a href="https://guides.rubyonrails.org/v3.2.8/getting_started.html#getting-up-and-running-quickly-with-scaffolding" target="_blank">here</a> and follow steps 5 - 6.12 to see how it works. Make sure to not just follow the code examples but read through everything that is being generated for you.

### Reflection

There are pros and cons to using scaffolding to build a rails app, as with anything. 

**Pros:**
- Quick
- Comprehensive
- Good for experimenting

**Cons:**
- Difficult to customize
- Does not really improve understanding
- Read this top <a href="https://stackoverflow.com/questions/6735468/why-do-ruby-on-rails-professionals-not-use-scaffolding" target="_blank">stack overflow answer</a>

So while using scaffolding can be a great tool, it's important to consider what you are trying to build and that it is not meant to be a finished product. 


#### Deliverable
Add the scaffolding-app repository to your github account. 

Then, go to the `rails_guides_solution.md` file and link your repository and answer the questions. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
