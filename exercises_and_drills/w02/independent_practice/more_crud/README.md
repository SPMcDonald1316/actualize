## Return to Rails!

#### 1. Let's go back to your movie-app from yesterday
Inside your Actualize directory:
``` bash
cd movie-app
subl .
```

#### 2. Create a new model in the same app!
Let's create a `Movie` model. It will have 3 attributes: a title (string datatype), year (integer datatype), and a plot (text datatype).
``` bash
rails generate model Movie title:string year:integer plot:text
```

#### 3. To the database!

Next, let's add some new instances of Movies to our database. Use your cheatsheets where you need them!

1. Migrate the model
2. Navigate to the rails console
3. Make a few new movie model instances in the console

#### 4. Seed 'em up

Add some seed data to `db/seeds.rb`. It will look very similar to the way you created data in the console! You can also check back on yesterday's assignment if you don't remember all the syntax.

Now seed the file from the command line (outside your rails console):
```bash
rails db:seed
```

#### Exercises

1. Create an api namespaced `Movies` controller with routes and views. Create a route/controller action/view to see all the movies as well as an individual movie. Remember to use instance variables!
2. Make a Ruby frontend script using the HTTP gem to display the results in the terminal instead of a web browser. This script can be run from anywhere! It does not have to be inside the movie-app.
3. Check out the [active record query docs](https://guides.rubyonrails.org/active_record_querying.html#retrieving-objects-from-the-database) and play around with some of the queries listed (do this in your rails console). Pay attention specifically to the examples provided. See if you can use one of these queries inside your Movies controller!


### Deliverable
Update your `movie-app` repository on github by doing a git add, commit, and push to the master branch. 

Then, go to the more_crud.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
