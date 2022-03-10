# Authorization and Active Record Review

#### Authorization

We have previously defined _authentication_, which is the process of ascertaining that the user of your application is truly who they claim to be.

We will now talk about _authorization_, which is the concept of granting different levels of access to different users. For example, in our mini-capstones, regular customers should not have access to update or delete products from the website. However, employees of the company (or at least some of them) may have access. Authorization depends upon authentication. We cannot grant the right authority to a user until we’ve determined who they are!


#### Implementing Authorization (after authentication)

Since authorizing a user to do an action requires a user to be logged in, we will first create authentication and then authorization in the movie-app.

1. In the movie-app, follow the authentication cheat sheet to create users!
2. Create a few users in Insomnia.
3. Add a migration to create an admin attribute on a User. An admin user will be allowed to create/update/destroy Actor and Movie information, and a non-admin user will not.
4. Make an `authenticate_admin` method in the application controller similar to the `authenticate_user` method we've used before. 
5. Create a `before_action` at the top of the actors_controller and the movies_controller that will allow users to see actor/movie data, but not modify or create it:
```ruby
before_action :authenticate_admin, except: [:index, :show]
```
6. Use [Insomnia Environment Variables](https://support.insomnia.rest/article/18-environment-variables) to store the jwt to make it easier to login as different users.


#### Active Record Review

These exercises will help you review Active Record, has_many, and the rails console.

• Before beginning this exercise, make sure your mini-capstone has:

1. Models: Product, User, and Order
2. Correctly set up associations (each model has the proper has_many and/or belongs_to between other models)
3. Have at least two orders in your database; make sure each order has an associated user and product.

• Start your rails console to begin the exercise (this exercise is only using the rails console as long as you’ve set up your models and associations).

1. Create a variable called “order” and assign it the value of the first order in your database. You will need to call the class Order. To do this, type and enter: order = Order.first Wasn’t that easy!

2. Now with your variable order (which is the first order in your database), your order should have an associated user and product. Using only the instance variable you just created (order) output in your console the order’s product’s name. And on another line, it’s price.
  
3. Now instead of creating an instance variable of just one order, create a variable called orders that holds an array of all the orders in your database. Then, using only orders and chaining, output in the console the last order’s product’s price.
  
4. Using the same variable (orders) output the last order’s product’s first image’s image_url (if your app can only store one image, that’s fine, just display the one).
  
5. Using the rails console, find out how many orders the first user in the database has ordered. Also, what was the last thing he/she ordered? What was the price of it?
  
6. Experiment. Starting with a record in your database (Order.last, Product.find_by(id: 2), User.first) and try chaining through your models to find connected data from a different model.

You can often test and practice model methods first in the console, before using them in your app. Being able to experiment like this will help you save time instead of trying tinker/troubleshoot directly in your models, views, or controllers.

#### Deliverable

Update your `movie-app` on github using a git add, commit, and push!

Completed the exercises in the `authorization_solution.rb` file in this folder. 

Navigate to your independent practice repository and git add, commit, and push up to your branch!
