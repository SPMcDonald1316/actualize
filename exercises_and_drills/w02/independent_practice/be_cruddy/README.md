# ActiveRecord and CRUD - Learn to be cruddy!

| Objectives       |  
| :------------------- |  
| Add models to a Rails app |
| Seed a Rails database |
| Write ActiveRecord queries |  
---

### Warmup
Convert these English statements into active record queries (we don't need to actually run them in the console as we don't have these models, just how they might look if we did!). Consult your cheat sheet and the [Rails docs](http://guides.rubyonrails.org/active_record_querying.html) as needed. Add these answers to the `be_cruddy_solution.rb` file in this repo.

1. Return the first user in the database with the last name "Hendrickson".

2. Return the answer in the database with the id of 4.

3. Return all the articles in the database.


## Ready for Rails!


#### 1. Create a new rails application
Inside your Actualize directory:
``` bash
rails new movie-app 
cd movie-app
subl .
```
**ProTip: run `rails -help` to understand some of the options rails provides**

#### 2. Create an `Actor` model
Our `Actor` model will have three attributes: a first name, last name, and "known for" - all strings.

**NOTE: all attributes are strings by default!**

``` bash
rails generate model Actor first_name:string last_name:string known_for:string
```

Take a look at the files you just created:
	- `app/models/actor.rb`
	- `db/migrate/1234566789_create_actors.rb`

#### 3. Setup your database

Next, create your application database:
```bash
rails db:create # create a new database on your machine
rails db:migrate # magic voodoo
```

#### 4. Launch the rails console and create your first actor!
```bash
rails console
```

```ruby
> actor = Actor.new(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")
> actor.save
```

See if you can get all the actors from the database!
Then see if you can get the individual actor from the database using the id that was created.

#### 5. Can you seed your database?
Take a look at `db/seeds.rb`.

Add the following line to `db/seeds.rb`:
```ruby
actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save
```

Now run the following from your command line (not the console!):
```bash
rails db:seed
```

The `seeds.rb` file is magic, because it _already_ knows about all of the models in your rails app. All you have to do is tell it what data to create!

Now, back in the rails console, type `Actor.all`. Does it show the new actor you just created? 

**ProTip: our rails console doesn't always recieve changes we've made in our text editor. Exit the rails console (using exit) and try restarting it**

#### Exercises

Using the rails console:

1. Add 2-3 more actors
2. Find the first actor
3. Find the last actor
4. Search by id
5. Search by first name
6. Delete an actor
7. Update the known_for of an actor
8. Delete all the actors you created
9. Create an api namespaced `Actors` controller. Make an associated route and jbuilder view to display a single Actor based on id. Remember to use an instance variable!


#### Bonus
2. Seed your database with 10 actors using the FFaker gem. To achieve this goal, you will need to familiarize yourself with the `ffaker` gem.

Add the ffaker gem at the bottom of your `Gemfile` inside the rails repository:
```ruby
gem 'ffaker'
```

In the terminal, run this command to tell your rails app to include the new gem:
```bash
bundle
```
Skim through [FFaker's Documentation](https://github.com/ffaker/ffaker). Then, use [this reference](https://github.com/ffaker/ffaker/blob/master/REFERENCE.md) for syntax. Try to create new actors using the ffaker syntax in your `db/seeds.rb` file. Seed the database and check the console to see all your actors!


**Pro-Tip: Remember, when you're working in the console `up-arrow` is your friend!**


### Deliverable
Create a new repository on github and connect it to your local `movie-app` repository. Git add, commit, and push to the master branch to put your new rails project on github. 

Once you've completed the exercise, go to the be_cruddy.rb file in this folder and follow the instructions! Then, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
