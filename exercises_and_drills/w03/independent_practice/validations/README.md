# Validations

Validation is the concept that we will not save data to the database if the data is invalid for any reason. While some validations seem unnecessary, there are many that are quite useful. Obviously, an email address should require an @ sign if we want to be able to email our users. Perhaps a password should be more than 1 character in length. Examples are endless!

#### 1. Back to the movie-app!
Inside your Actualize directory:
``` bash
cd movie-app
subl .
```

#### 2. Make some validations for our `Actor` model

What types of validations might we want on our `Actor` model? Use the [rails validations docs](https://guides.rubyonrails.org/active_record_validations.html) as reference.

Add these validations to the Actor model.

1. Make it so that a Actor must have a first_name with a length of at least 2.
2. Make it so that a Actor must have a last_name with a length of at least 2.
3. Make it so that a Actor must have a known_for movie/show listed.
4. Make it so that a Actor must have an age over 13 to be listed on the site.

#### 3. Checking the validations

Let's check it out in the rails console!

```bash
rails console 
```

Create a new invalid `Actor` model using the “.new” method. Then see weather it's valid or not using the .invalid? method.

```ruby
> actor = Actor.new(first_name: "A", last_name: "K", known_for: "", age: 11, gender: "F")
> actor.invalid?
```

Then, try saving the actor to see the errors. It will error out, and then let's look at the errors that occured. 

```ruby
> actor.save
> actor.errors.full_messages
```

#### More Exercises

1. Add validations for your `Movie` model. Choose validations that make sense to you!
2. Add an if / else condition to your Actor controller `create` action and `update` action to deal with happy / sad paths
3. Add an if / else condition to your Movie controller `create` action and `update` action to deal with happy / sad paths

#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `validations_solution.md` file and link your repository. 

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
