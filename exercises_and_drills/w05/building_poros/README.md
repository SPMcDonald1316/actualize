# Exercise - Building POROs

![Chicago skyline](resources/chicago_skyline_night.jpg)

### Prepare the App

There are two rails apps, a client app and an api app, that form a web application to display historic building information. These two apps have already been built. You can work with them by forking and then cloning these two repos:

- https://github.com/`<your-deep-dive-name>`/architecture\_poros\_api
- https://github.com/`<your-deep-dive-name>`/architecture\_poros\_client

If you have not forked a repo before, let me explain that "forking a repo" makes a copy of the code on Github for your use without affecting the original repository's code on Github.  You can fork the repos above by going to their Github page and clicking the button that says `Fork` in the top-right corner. This process will create a new repo under your account and be listed along with all the repositories that you have created from scratch. You can then clone from your Github account's version of the repository to get it on your local computer.

![forking](resources/forking.png)

You will need to...

- create/migrate/seed a database for the api
- then start the api server on port 3000 using `rails s`
- then start a second server for the client app on port 3001 using the command `rails s -p 3001`

Your apps should be set up before moving forward. Test that your app was set up correctly by visiting [http://localhost:3001/client/buildings/1](http://localhost:3001/client/buildings/1)

### Your Mission

This app functions correctly, and you do not need to add functionality to this app to complete this exercise. Your mission here is to clean up the code in the controller and erb views using POROs (Plain Old Ruby Objects). To be said another way: Tou are building a class similar to a Rails model but it doesn't inherit from `ApplicationRecord` and isn't generated with a Rails terminal command. Its not Rails; it's just plain old Ruby.

Below is the current show action on the `architectture_client` app in the `client/buildings_controller.rb`

```ruby
# from app/controllers/client/buildings_controller.rb

def show
  response = HTTP.get("http://localhost:3000/api/buildings/#{params[:id]}")
  @building = response.parse
  render 'show.html.erb'
end
```

This code sends a web request to the api and receives json data in the web response. The variable, `@building` is now holding a hash and being passed to the the erb view. The data is called using hash syntax with square brackets and a key, like this.

```html
<!-- from app/views/client/buildings/show.html.erb -->

<h2><%= @building["name"] %></h2>
```

We want to clean up our code so it is easier to work with and allow the ability for behavior to be attached to our building data within the client app. Start by adding a new file called `building.rb` to the `models` folder in the client app. 

>Note: You should NOT generate this file from the command line with a `rails generate model ...`. 

Create a class inside a new file within the models folder, like this:

```ruby
# create this class in a new file at this path -> app/models/building.rb

class Building
  def initialize(input_options)
    # add attributes here as instance variables
  end
end
```

If you create a `find` class method, the naming of the method would look like this.

```ruby
class Building
  # ...

  def self.find(input_id)
    # write your logic for the method here
  end
end
```

Our goal is to handle the Building as an object. We want the show action in the client/buildings controller to look like this:

```ruby
def show
  @building = Building.find(params[:id])
  render 'show.html.erb'
end
```

We are using the `find` class method to get the correct data from the api. It will use the building's id and then return a `Building` object. In addition, we will need to change the `show.html.erb` because we are no longer looking at a hash. Add the appropriate methods to access the attributes. See example below:

```html
<h2><%= @building.name %></h2>
```

You are to replace the controller actions one at a time, from the code following code:

```ruby
class Client::BuildingsController < ApplicationController

  def index
    @buildings = Building.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @building = Building.create(
                                 name: params[:name],
                                 address: params[:address],
                                 height: params[:height],
                                 construction_date: params[:construction_date],
                                 architect: params[:architect]
                                )

    redirect_to "/client/buildings/#{@building.id}"
  end

  def show
    @building = Building.find(params[:id])
    render 'show.html.erb'
  end

  def edit
    @building = Building.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @building = Building.find(params[:id])
    @building.update(
                     name: params[:name],
                     address: params[:address],
                     height: params[:height],
                     construction_date: params[:construction_date],
                     architect: params[:architect]
                    )

    redirect_to "/client/buildings/#{@building.id}"
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to "/"
  end
end
```

<img style="height: 500px;" src="resources/chicago_building.jpg">

# Commit 1 - Research

Research instance methods and class methods. Answer these questions in the `building_poros_solution.rb` file.

- What is the naming convention for an instance method?
- What is the naming convention for a class method?
- What is an instance method called on?
- What is a class method called on?

# Commit 2 - Initial Solution

Create the PORO as a Building class in the models folder. Write the PORO method(s) that allows you to clean up the controller action and view. Change only one action at a time and confirm that it functions correctly before moving on to the next action. Listed below is the recommended order that you should update the actions:

1. show action
2. index action
3. create action
4. edit action
5. update action
6. destroy action

# Bonus 1 - Remove the render lines. 

This is a Rails trick, but it only works in certain situations. If the the action and the view share the same name, such as the `show` action and the view `show.html.erb` it will default to that view. Note: This will only work when rendering html.erb files, not json.jbuilder and this will not work for redirects.

Example

```ruby
def show
  @building = Building.find(params[:id])
  render 'show.html.erb'
end
```

The above action can be reduced to action below:

```ruby
def show
  @building = Building.find(params[:id])
end
```

# Bonus 2

Add the functionality to the complete the following user stories in the api and client. Update your seed file so it can be checked, and submit the Github address to your version of the client and api apps on your solution page.

### User Stories

- As a User, I want to see multiple architects displayed as a bulleted list and the word 'Architect' should be displayed on the page in plural form if there are multiple architects in order to view them more clearly.
- As a User, I want to store an image via url for each of the buildings in order to display the image on the index and show pages.
- Add a new building using the client's "new buildings form" without including an image url, make a default_image model method in your PORO that displays a default image url if no image is provided in the database.
- Without changing the api, create a model method to format the street address so it displays on two lines in the browser.
- Create a new model on the api called City with attributes of population, lat, lng, and name. Each building belongs to a city. Add some new buildings to a second city in the database, then create a PORO for city.
  - Ask yourself, in your PORO you should have a method that returns all buildings for a city - should that information already be included when you grab a city? Or should you make a second call to the api for a filtered index of buildings? Depending on your answer, implement what you think the best solution is for viewing building information by city.
- Add happy and sad paths to the api and client. Adjust your PORO to give errors based on response status codes from the Rails api.
- Add bootstrap dismissible alerts if there are errors. Use this link for documentation: http://getbootstrap.com/docs/4.1/components/alerts/#dismissing

# Bonus 3

Research `Strong Parameters` in rails. If you feel comfortable, add it to the api buildings_controller.
