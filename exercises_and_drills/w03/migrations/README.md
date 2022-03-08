## Migrations

To add, remove, or change the columns of the tables in our database, we use migrations. Every time we create a new model (or any other type of migration) in Rails, a migration file is automatically created. We can find it inside the db/migrate folder.

Use your migration cheat-sheet to complete the following exercises.

#### 1. Back to the movie-app!
Inside your Actualize directory:
``` bash
cd movie-app
subl .
```

#### 2. Create a migration for the `Movie` model
Our `Movie` model should have a director attribute. 
``` bash
rails generate migration AddDirectorToMovie director:string
```
This shortcut migration should have produced a file in the `db/migrate` folder with the line:

```ruby
add_column :movies, :director, :string
```

Now, let's add an attribute to check if the Movie is in English or not. Add a `english` attribute (string) to the `Movie` model as well. 

#### 3. Making a change

Let's make the `english` attribute a boolean (true/false) instead! Make the default for this attribute be true. Use your cheat sheet and find the syntax. When you think you've got it, run: 

```bash
rails db:migrate 
```

to apply the changes to the database.

#### 4. Use Insomnia to create a new Movie model instance

This will require you to update your Movies controller and the views with the new attributes.


#### 5. Use Insomnia to update an existing Movie model

Again, you'll need to make changes to your controller! Make sure you've successfully done it by checking your rails console or Postico.


#### More Exercises

1. Create a migration to add a gender attribute and an age attribute to the `Actor` model.
2. Update your Actors controller to include the new attributes in the create/update actions, as well as the views. 
3. If you didn't make age an integer (gotcha!), make a migration to change it's datatype. 


#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `migrations_solution.md` file and link your repository. 

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
