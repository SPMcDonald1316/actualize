# The Has Many Through Assocation

A has many through association is often used to set up a many-to-many connection with another model. This association indicates that one model has the ability to be matched with many instances of another model by proceeding through a third model. For example, our mini-capstone has categories and products that are connected through category_products.  

A product can have many categories, and conversely, and category can have many products. 

To define this relationship we can use rails shortcuts, like so: 

```ruby
# app/models/category.rb
class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products
end
```

```ruby
# app/models/category_product.rb
class CategoryProduct < ApplicationRecord
  belongs_to :category
  belongs_to :product
end
```

```ruby
# app/models/product.rb
class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
end
```

Some important things to note are:
1. Rails assumes there is a model called Category, Product, and CategoryProduct.
2. In the category model, the assoiation to the join table (category_products, in this case) must exist before we can access the products table. 
3. Same thing goes for the product model: the association to the join table must exist before we can access the categories table. 
4. The join table belongs to both of the other tables. 


#### Making a many-to-many

Navigate to your movie app. We are going to create a brand new model to add genres to our movies! 

1. Genereate a new model called `Genre`. We're going to give this model a name (string) and that's it for now.
2. Look over the migration file and if it looks good, migrate the model to the database. 
3. Create a MovieGenre model with a `genre_id` and `movie_id` (both integers).
4. Once you've checked the newly generated migration file, run a migration. 
5. Create a few instances of a Genre (thriller, romcom, action, etc.) and some MovieGenre instances using your rails console or the seed file. Remember, MovieGenre will use an actual movie_id and an actual genre_id, so make sure they exist!
6. In the model files, add the appropriate belongs_to and has_many relationships to the `movie_genre.rb`, `movie.rb`, and `genre.rb` files. 


#### Testing the associations

The quickest and easiest way to test these associations is to use the rails console.

```bash
rails console 
```
```ruby
> movie = Movie.first
> movie.genres
> genre = Genre.first
> genre.movies
```

#### Change the json output

Let's update the json views to reflect the new assocation. In our movie views (index/show or the partial if you have one), update our movie to show the genres it's associated with. 

`_movie.json.jbuilder`, add this code:
```json
json.genres movie.genres
```

#### Bonus

Make a model method called `genre_names` in `movie.rb` to make the json output prettier. It should deliver an array of just the names of the genres (strings) instead of genre hashes. 


#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `has_many_through_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
