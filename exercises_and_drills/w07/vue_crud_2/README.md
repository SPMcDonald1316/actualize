# Vue CRUD 2

We've learned how to do CRUD actions using Vue.js at this point. However, JavaScript is a lot less structured than Rails, and allows you to accomplish the same task in many different ways. So, it’s important to focus on understanding the general concepts and NOT memorizing the syntax, since we'll be learning a lot of different ways to do things!

### Review Error Handling

If we want our app to tell us when something didn't go as expected (a.k.a. our data is invalid, or something else is wrong), we can use error handling. Let's look back at how to do error handling on the frontend.

In our Vue.js template, the html contains somewhere to display errors, like this:

```xml
<ul>
	<li v-for="error in errors">{{ error }}</li>
</ul>
```

The data section in our script tag will contain an empty errors array, and our submit method  like so:

```js
export default {
  data: function() {
    return {
      errors: [],
    };
  }
};
```

And lastly, in the script tag where we are submitting data and making an axios request, we will "catch" errors and fill the errors array if we get a server-side error:

```js
methods: {
  submit: function() {
    var params = {
      title: this.newTitle
    };
    axios
      .post("/api/recipes", params)
      .then(response => {
        console.log("Success", response.data);
      })
      .catch(error => {
        this.errors = error.response.data.errors;
      });
  }
}
```


### Exercise

Let's create a new Rails backend and Vue.js frontend to combine what we've learned!

1) Make a new Rails API app in your Actualize folder called `example-places-app`.

2) Make a Place model with two attributes - name and address. Use the seeds file or the rails console to make some initial data.

3) Make an `api/places` controller.

4) Make the places index/create/show/update/destroy actions.

6) Create a new Vue.js app in your Actualize folder called `example-places-vue_app`. 

7) Use Vue.js to build the index/new/create/show/edit/update/destroy actions on the frontend.

8) Add backend validations with happy/sad paths in the controller.

9) Add frontend validations with happy/sad paths in the view.

**Bonus**

- Install Bootstrap to style the Vue app.


#### Deliverable
Add both your `example-places-app` and the `example-places-vue-app` to Github.

Then, go to the vue_crud_2_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```