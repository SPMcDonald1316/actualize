# Has Many Through Continued

We're going to continue on with our has many through example. Defining these types of assocations can be difficult but just remember - practice, experience, and time will make this easier to do!


#### Making new MovieGenres 

Navigate to your movie-app. In our last practice, we added a `Genre` model as well as a `MovieGenre` model. Look through your models, your schema file, and and your json views to review what you've done so far. 

Let's allow for the ability to create new MovieGenres. To do this we'll start by making a controller:

```bash
rails generate controller api/movie_genres
```

Then let's make a MovieGenres create action. The user will provide the `movie_id` and the `genre_id` in parameters for now. 

Now, make an Insomnia request to create a new MovieGenre. Assure it was successfully created by checking your server log as well as Postico! 


#### Exercise

Build a brand new rails app (call it `practice-associations`) with a `speaker` model and a `meeting` model. An speaker can have many meetings, and a meeting can have many speakers. How should we make this association?

Here's what our models' attributes might look like for speakers and meetings:
  * `Speaker`: first_name, last_name, email
  * `Meeting`: title, agenda, location, time


1. Create models and migrations for three tables: `speakers`, `meetings`, and a *join* table. Think about what you should name your join table and what columns it should have.
2. Implement a many-to-many relationship between `speakers` and `meetings`.
3. Use the Rails console to create at least three `speakers` and two `meetings`. Each meeting should have at least one speaker associated with it. 

#### Bonus

1. Add <a href="http://guides.rubyonrails.org/active_record_validations.html" target="_blank">validations</a> to your `Speaker` and `Meeting` models:
  * All attributes for speakers and meetings should be required (**Hint:** `presence: true`)
  * For meetings, the time should be in the future (**Hint:** Use ruby's `Time.now`</a>)

2. Test your validations in the Rails console:

  ```ruby
  speaker = Speaker.create
  speaker.errors.full_messages
  # => What does this return?
  ```

#### Super Bonus: Self-Referencing Assocations

Lots of real-world apps create assocations between items that are the same type of resource.  Read <a href="http://guides.rubyonrails.org/association_basics.html#self-joins" target="_blank">the "self joins" section of the Associations Basics Rails Guide</a> and try to create a self-referencing association in your `practice_associations` app.  (Classic use cases are followers and followees, where both related resources would be users.)


#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch. Also, add your practice-associations app to your github account.

Then, go to the `has_many_through_solution.md` file and link your repositories. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
