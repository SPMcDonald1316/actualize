# The Has Many Assocation

When we have two database tables with coupled information, often we create assocations to keep the data from being duplicated. 

In our mini capstone apps, we decided that a supplier `has_many` products, and that a product `belongs_to` a supplier.   

This meant that we had to create what's known as a `foreign key` on our products table called `supplier_id` to keep track of which supplier a given product belongs to. 

To then use these database associations, we created some `association methods` on the models! 

We're going to get more practice creating and using associations in our movie app.

#### Back to the movie-app...yet again!

_NOTE: At this point it's imperative that your movie app is up to date. If you're experiencing and issues that would prevent you from doing tonight's homework, you can fork and then clone [this github repository](https://github.com/danizaghian/movie-app). After cloning, run bundle inside the repo, and then rails db:reset. Ask your instructor/TA for help with this if needed._

Navigate to your movie-app. We are going to link actors and movies together and create an assocation. We are going to give movies the ability to have many actors that are in it. This means that a movie `has_many` actors, and an actor `belongs_to` a movie.

In a one-to-many relationship like this one, the foreign key always goes on the `belongs_to` table, in this case the actors table. Let's add the right foreign key using a migration.

#### Make a migration to add the foreign key

In the movie-app, add a migration to add a key called `movie_id` to the actors table (it must be an integer). 

```bash
rails generate migration AddMovieIdToActors movie_id:integer
```

#### Assocating the models

Use the rails console to associate the actors with movies by updating the empty `movie_id` data in the actors table. An actor must belong to an actual movie with a real id! You should have some movie data already in the database.

```bash
rails console 
```

Example: 
```ruby
> actor = Actor.find(1)
> actor.update(movie_id: 2)
```

#### Making assocation methods

Let's use the Rails shortcuts to make some assocation methods in our models! Let's use our critical thinking skills to figure out what to write. 

Our actor belongs to a single movie, and our movie has many actors. This means our models will look like this: 

```ruby
# movie.rb
has_many :actors #returns array of many actors
```

```ruby
# actor.rb
belongs_to :movie #returns hash of one single movie
```

Note the pluralization in these methods. A movie has many _actors_ and a actor belongs to one _movie_. These symbols are actually the names of the methods, so this is important! 

It's also imperative to note the type of data that each of the methods returns. The `.actors` method is going to return an array of actors, and the `.movie` method is going to return a hash of just one movie. 

#### Testing the associations

The quickest and easiest way to test these associations is to use the rails console.

```bash
rails console 
```
```ruby
> actor = Actor.first
> actor.movie
> movie = Movie.first
> movie.actors
```

#### Change the json output

Let's update the json views to reflect the new assocation. In our actor views (index/show or the partial if you have one), update our actor to show the plot of the movie it belongs to. 

`_actor.json.jbuilder`, add this code:
```json
json.movie_title actor.movie.plot
```

#### Fix your actors controller

Because we just added another piece of data to our actors table, we need to change the controller to include the movie_id. In your create and update actions, add the movie_id attribute! 

#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `has_many_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
