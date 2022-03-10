# Restful APIs

### Objectives
- Identify all the RESTful actions and describe each one's purpose
- Write a route for each RESTful action

#### It all starts with requests and responses: HTTP

HTTP is structured around verbs & urls (sometimes called paths or resources). To pass extra information with each request we use parameters/params.

#### HTTP Verbs

Verbs describe what you can do with HTTP. It's the act of you, on the client/browser side, doing something on the web. What verbs can HTTP handle?

  - GET - for getting information
  - POST - for sending new information
  - PATCH - for updating something that exists
  - DELETE - for destroying something that exists

There are other verbs besides these but this class will mostly cover these main ones. 


## Combining Verbs & URLs to create restful actions

Let's see how the two work together. If we have a Book model and we want to create restful actions for it, how would they look and what are their names? Here's some pseudocode (and don't forget to refer to your REST Table!): 

```ruby
Rails.application.routes.draw do

  # GET "/books" - Gets all the books we have (index)

  # POST "/books" - Creates a new book, add it to our database (create)

  # GET "/books/3" - Just get the information associated one specific book (that already exists, book id = 3) (show)

  # PATCH "/books/3" - Updates a specific book (book id = 3) (update)

  # DELETE "/books/3" - Deletes a specific book (book id = 3) (destroy)

end
```

That's some nice pseudocode. Knowing what we already know about Rails routing & controller actions, let's see if we can start filling these in!

```ruby
Rails.application.routes.draw do

  # GET "/books" - Gets all the books we have
  get "/books" => "books#index"

  # POST "/books" - Creates a new book, add it to our database
  post "/books" => "books#create"

  # GET "/books/3" - Just get one specific book (that already exists)
  get "/books/:id" => "books#show"

  # PATCH "/books/3" - Updates a specific book
  patch "/books/:id" => "books#update"

  # DELETE "/books/3" - Deletes a specific book
  delete "/books/:id" => "books#destroy"

end
```

The `:id` portion of the route is a parameter! That's us defining that we _expect_ a parameter there, and we want to call it `id`. Of course, we could call it `:purple_hippo` if we want, but `:id` is a convention we'll see a lot, because our database gives each object a unique ID – so when we ask for book #3, we can trust we're getting the book we want back.


### Deliverable

1. In your existing movie-app, create all the restful routes - you can replace the old ones - from above (index, create, show, update, and destroy) for the `Movie` model and the `Actor` model. Test the routes in Insomnia to make sure they work as expected!

Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

2. Read the following articles and explore several of the linked reference:

- [HTTP API Design Resources](https://github.com/gocardless/http-api-design)
- [Best Practices](http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)

Go to the `restful_apis_solution.md` file in this folder and answer the questions. Push to your github branch!

