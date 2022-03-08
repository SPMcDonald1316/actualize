# HTML and ERB

HTML was originally invented to write documents. It wasn’t created for the internet and definitely not for the colorful animated and interactive web applications that we see everyday. 

It is one of the cornerstone technologies of the internet and in combination with other tools such as CSS and Javascript, developers can give greater user experience with websites. 

In our rails applications we can render a dynamic html template using a tool called erb, short for embedded ruby.


### An Example `<form>` Element (Tag)

```html
<form method="POST" action="/page">
  <label for="name">Page Name</label>
  <input id="name" type="text" name="page_name" />
  <input type="submit" value="Create" />
</form>
```

#### Attributes

In the opening of the `<form>` tag you can see two attributes: `method` & `action`

- **method**: the HTTP verb (method) that the browser uses to submit the form.
- **action**: the path of the HTTP request page that processes the information submitted via the form.


** Client / Server Model **

![client/server](https://mdn.mozillademos.org/files/4291/client-server.png)

### The `<label>` Element (Tag)

The `<label>` element is the formal way to define a label for an HTML form widget. 

There are two ways to use labels correctly:

```html
<!-- Label example -->
<label>Click me 
  <input type="text" id="user" name="name" />
</label>

<!-- Using the "for" attribute with the input's id -->
<label for="user">Click me</label>
<input id="user" type="text" name="name" />
```

#### `<label>`'s Attributes

* The `for` in a label references an `<input>`s `id` attribute, not it's `name` attribute! Sometimes these values will be the same, but `for` always is matched with `id`.

* The `name` is the `key` of the `<input>`'s value when data is sent.

## Common Inputs

| Field Type | HTML Code | Notes |
|:-- |:-- |:-- |
| plain text | `<input type="text">`| the type attribute can be omitted |
| password field | `<input type="password">` | echoes dots instead of characters |
| text area | `<textarea></textarea>` | a more customizable plain text area |
| checkbox | `<input type="checkbox">` | can be toggled on or off |
| radio button | `<input type="radio">` |
| drop-down lists | `<select><option></option></select>` |
| hidden field | `<input type="hidden">` | nothing there!
| submit button | `<input type="submit">` | activates the form's submission <br/>(a `POST` request or <br/>Javascript action) |

<!-- Images -->
[text]:   https://raw.github.com/h4w5/html_form_cheatsheet_images/master/input-text.png
[area]:   https://raw.github.com/h4w5/html_form_cheatsheet_images/master/textarea.png
[check]:  https://raw.github.com/h4w5/html_form_cheatsheet_images/master/input-checkbox.png
[radio]:  https://raw.github.com/h4w5/html_form_cheatsheet_images/master/input-radio.png
[select]: https://raw.github.com/h4w5/html_form_cheatsheet_images/master/select-option.png
[file]:   https://raw.github.com/h4w5/html_form_cheatsheet_images/master/input-file.png
[submit]: https://raw.github.com/h4w5/html_form_cheatsheet_images/master/input-submit.png

[Dive In To HTML5 — More inputs!](http://diveintohtml5.info/forms.html#type-email)

### Important Attributes

All input types (including `<textarea>`s):

- **`type`**: the type of data that is being input (affects the "widget" that is used to display this
  element by the browser).
- **`name`**: the key used to describe this data in the HTTP request.
- **`id`**: the unique identifier that other HTML elements, JavaScript and CSS use to access this 
  element in the browser.
- **`value`**: the default data that is assigned to the element.
- **`placeholder`**: not a default value, but a useful HTML5 addition of a data "prompt" for an input.
- **`autofocus`**: defaults the cursor to a specific input when the page originally loads. You can only have one autofocus on your page.
- **`disabled`**: a Boolean attribute indicating that the "widget" is not available for interaction.

Radio buttons or checkboxes:

- **`checked`**: a Boolean that indicates whether the control is selected by default (is false unless).
- **`name`**: the group to which this element is connected. For radio buttons, only one element per 
  group (or name) can be checked.
- **`value`**: the data or value that is returned for a specific group (a multi-element control), if 
  this element is checked.
  

##Further Reading

MDN has a number of exhaustive resources on HTML forms and inputs. It can be a lot to absorb, so look for patterns and try to grasp the big picture.

* [HTML Form Reference](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms)
* [HTML Input Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
* [Native Form Widgets](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/The_native_form_widgets)
* [Form Validation](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/Data_form_validation)


#### Exercise

Navigate to your movie-app. In your movies controller show action, change the render action to render `show.html.erb` instead of `show.json.jbuilder`. Build the `show.html.erb` file in the correct views folder. 

In the `show.html.erb` file, add some [html features](https://www.w3schools.com/html/html_elements.asp) and a form (it's okay if it doesn't go anywhere!). Feel free to be experimental and play around with the code.

Add some erb tags (sometimes called clown hats, skull tags, or snow cones!) to display data from the controller:

```html
<!-- app/views/api/movies/show.html.erb -->
<h1><%= @movie.title %></h1>
<h3><%= @movie.year %></h3>
<h4><%= @movie.plot %></h4>
```

#### Deliverable
Update your movie-app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `html_erb_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
