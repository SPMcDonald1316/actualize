# SQL and ActiveRecord

Relational databases understand just one language: SQL. We will see a bit later that every time we use Rails to save or retrieve something from the database, that Rails will, under the hood, translate our Ruby code into SQL so that the database will understand it. You will become a much more powerful developer if you actually gain a mastery of SQL itself.

Active Record is the component of Rails that allows you to talk to the database. This is typically done through the models, as we have seen. This includes methods like find_by, all, first, last, etc. 

#### SQL Basics

1. Navigate to your `mini-capstone app`.
2. Open Postico and find your mini-capstone development database.
3. Go to "SQL Query" and execute each of the following queries for your products:

```
SELECT * FROM products;

SELECT name, price FROM products;

SELECT * FROM products WHERE price > 100;

SELECT * FROM products ORDER BY price DESC;

SELECT COUNT(*) FROM products;
```

#### Making your own queries

Use the SQL Cheat Sheet to create the following queries:

1. Get all products with a title that begins with "T".
2. Get the last 3 products entered into the database.
3. Get the average price of all the products.
4. Get all the products where the description has the word 'awesome' or 'legendary'.


#### ActiveRecord

Convert the following SQL statements into Active Record queries:

```
SELECT * FROM products;

SELECT * FROM products WHERE price > 100;

SELECT * FROM products ORDER BY price DESC;

SELECT COUNT(*) FROM products;
```

Try converting the above SQL queries (Making your own queries step 1-4) you wrote into Active Record queries. These are tough!

#### Using ActiveRecord queries in Rails

In your movie-app, add the following features:

1. Change your Actor index action to sort actors by eldest to youngest.
2. Make the Movie index action only show movies that are in english. 

#### Bonus

Read up on some extra interactive sql: https://sqlbolt.com/

#### Deliverable

Update your movie-app repository on github by doing a git add, commit, and push to the master branch. In the `sql_and_activerecord_solution.md` file, write your answers to the exercises in this doc. 

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```
