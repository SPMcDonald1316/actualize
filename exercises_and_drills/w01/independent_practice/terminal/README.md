# Command Line/ Terminal

## Introduction

Developing web apps requires a degree of comfort navigating and interacting with your operating system through the command line, and similar to how you'll be practicing writing and running Ruby and JavaScript later in the course, we'll be practicing creating, modifying, and moving files and folders in your terminal to get you practicing commands.

For this exercise, you're going to create files and folders to organize your favorite books, movies, and music - then, you're going to reorganize them.

Be sure to use the terminal basics cheatsheet in case you get stuck.

> ***Note:*** _The specific authors, bands and names here are just examples -- use your own favorites! Seriously!_

## Exercise

- In your terminal, navigate to the Actualize folder we made in class. In there, create a folder called "my-favorite-things"; you'll use that folder to do the exercises below

- Organize your favorite books

  - in the "my-favorite-things" folder, create a folder called "books"
  - create a folder in books named after your favorite author (e.g. "mark-twain", or "john-grisham", avoid spaces and try to be consistent with the way you name them!)
  - create files named after some of the author's books in the author's folder
  - open the books folder in sublime
  - edit each file to put a brief description of the book


- Organize your favorite movies

  - in the "my-favorite-things" folder, create a folder called "movies"
  - create a folder in movies named after your favorite actor
  - create a folder in the actor folder named after the actor's breakthrough movie
  - create a text file named after the actor's character in the breakthrough movie's fodler
  - In Sublime, edit that text file with a description of the character's role in the movie


- Organize your favorite music

  - in the my-favorite-things folder, create a folder called "music"
  - move into the "music"
  - create a folder called "disco"
  - create a text file in "disco" called "ymca"
  - delete the "disco" folder
  - create a folder called "creed"
  - delete the "creed" folder
  - create folders called "one-direction", "the-strokes", and "rihanna"
  - create a text file in "one-direction" called "what-makes-you-beautiful.txt"
  **Stretch**
  - make two copies "what-makes-you-beautiful.txt" - one into "the-strokes" and one into "rihanna" and rename those files with songs by those artists (you'll need google for this one!)

**Bonus**

  - figure out how search through a file from the command line - without opening the file - for a string of text


#### Deliverable

Here's a look at what your files/folders should look like after each big step in the exercise:

- After "Organize your favorite books":

![](https://i.imgur.com/ySAjOeO.png)

- After "Organize your favorite movies":

![](https://i.imgur.com/h8WcyVE.png)

- After "Organize your favorite music":

![](https://i.imgur.com/T4E3eAg.png)


By this point you should have your independent practice repository downloaded on your local computer. Check to see if it's in your Actualize directory by navigating to the Actualize directory in your terminal, then listing contents:

```bash
$ cd Actualize
$ ls
```

You should see the `2019-**-yourcohortname` folder listed, that's your independent practice repo that you'll submit all homework to! If you don't have this repo downloaded, ask your instuctor or TA for some assistance. 

Once you have the independent practice repository, you can navigate into it (make sure to replace this command with the correct folder name: 

```bash
$ cd 2019-**-yourcohortname
```

Check out all the contents inside using `ls`. You should see a bunch of folders (resources, w01, w02, etc.) Navigate into the w01 directory and check out the folders inside:

```bash
$ ls
$ cd w01
$ ls
```

You should see a bunch more folders (drive_thru, terminal, git_and_github, etc.). Navigate to today's assignment (terminal):

```bash
$ cd terminal
$ ls
```

There should be a README.md file and a terminal_solution folder. The terminal_solution folder is empty (except for a single placeholder file). This is where you'll want to add your my-favorite-things directory. To add it here you can use the Finder to copy and paste it into the correct directory. To open up the current directory in Finder from the terminal, you can type:

```bash
$ open .
```

By the end, you should have something that looks like this (note where the my-favorite-things directory goes):

![](https://i.ibb.co/qgQQjP8/terminal-solution.png)


Once you've copied your `my-favorite-things` folder into the `terminal_solution` folder, it's time to submit your work! 

Let's push the added code to your branch. Don't worry too much about this process yet, we're going to cover it soon. In your terminal, navigate to the independent practice repository (from the Actualize directory):

```bash
$ cd 2019-**-yourcohortname
```

Let's make sure you've got a branch created:

```bash
$ git branch
```

You should see `master` and `yourbranchname` if you did this in class. If not, ask your instructor or TA for assistnace. There should be an asterick (*) by your personal branch name. If not, use `git checkout *yourbranchname*` to move to it.

Then, we're going to add, commit, and push the new code from our local repo to the online repo (on github)! Make sure to replace *yourbranchname* with the actual name of your branch:

```bash
$ git add --all
$ git commit -m "adds terminal assignment"
$ git push origin *yourbranchname*
```

That's it, homework submitted! If you run into issues, ask your instructor or TA for help, at this stage it will be really hard to debug your own errors. But don't worry, we'll be practicing this daily! 


## Additional Resources

- A list of [CLI Shortcuts](https://gist.github.com/alexpchin/01caa027b825d5f98871)
- An awesome Unix command [cheatsheet](https://github.com/veltman/clmystery/blob/master/cheatsheet.md)
