# CSS Frameworks

Bootstrap takes care of common CSS styling and layout. It is known as a CSS framework, which is just a fancy way for saying it’s thousands of lines of CSS that other people wrote.

### Pros and Cons

Some of the pros of using a css framework: 

- rapid development
- no design skills required
- mobile/responsive design out of the box

But it comes with a few drawbacks:

- harder to debug since it's not your code
- easy when you go with the grain, difficult to customize
- looks similar to other websites using a css framework

### Exercise

Let's build a fake frontend for our movie app and style it how we might want it to look. **This will just be a mockup**, meaning we're not going to connect it to our backend or any real data. However, we are going to put the files in our rails app public folder so that we can connect it later on!

In your movie-app /public folder, create the following (again, it's just static so put whatever you want as the content!):

- An index.html page to show all actors 
- A show.html page to show an individual actor
- A new.html page to show a form to create an actor ([bootstrap forms](http://getbootstrap.com/docs/4.3/components/forms/))
- An edit.html page to show a form to update an actor

Now, in the index.html add the following bootstrap features:

- A [navbar](http://getbootstrap.com/docs/4.3/components/navbar/)   
- A [jumbotron](https://getbootstrap.com/docs/4.3/components/jumbotron/)
- Some [cards in a grid](https://getbootstrap.com/docs/4.3/components/card/#using-grid-markup)
- Add some actor images to your cards!
- Try some cool [buttons](https://getbootstrap.com/docs/4.3/components/buttons/)
- Play around with any other bootstrap components that seem interesting to you ([docs](https://getbootstrap.com/docs/4.3/components/))

**Bonus**

Try styling your show, new, and/or edit page using [materialize](https://materializecss.com/) or another css framework of your choosing!

#### Deliverable
Update your `movie-app` repository on github by doing a git add, commit, and push to the master branch. 

Then, go to the css_frameworks_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
