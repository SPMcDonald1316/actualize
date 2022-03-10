## Let's use Git

First, create a directory in your Actualize directory:

In `Actualize` Folder
```bash
$ mkdir hello_world
```

Change directories into it:

```bash
$ cd hello_world
```

You can make this a git repository using the command (make sure you do this in your hello_world directory! use `pwd` to be sure of where you are):

```bash
$ git init
```

Git will reply:

```bash
Initialized empty Git repository in /Users/yourname/Actualize/hello_world/.git/
```

You've now initialized the working directory.

#### The .git folder

If we look at the contents of this empty folder using:

```bash
ls -A
```

We should see that there is now a hidden folder called .git this is where all of the information about your repository is stored. There is no need for you to make any changes to this folder. You can control all the git flow using git commands.

#### Add a file

Let's create a new file:

```bash
$ touch file.txt
```

If we run `git status` we should get:

```bash
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

  file.txt

nothing added to commit but untracked files present (use "git add" to track)
```

This means that there is a new untracked file. Next, tell Git to take a snapshot of the contents of all files under the current directory

```bash
$ git add --all 
```

This snapshot is now stored in a temporary staging area (our git shopping cart).

#### Commit

To permanently store the contents of the index in the repository, (commit these changes to the HEAD), you need to run:

```bash
$ git commit -m "Adds file.txt"
```

You should now get something like:

```bash
[master (root-commit) b4faebd] Adds file.txt
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file.txt
```

#### Checking the log

If we want to view the commit history, we can run:

```bash
git log
```

You should see something like:

```bash
* b4faebd (HEAD, master) Adds file.txt
```

#### A good commit message

A good commit message is:
  - in present tense
  - describes what the commit contributes

Good:
  - "Adds signup and login"
  - "Creates upvote counter"
  - "Fixes merge conflict"
  - "Fixes typo"
  
Bad:
  - "Added logout stuff"
  - "Upvotes!"
  - "conflict"
  - "stupid f****ing typos"

#### Make changes to the file

Now let's open file.txt in Sublime:

```bash
$ subl .
```

Inside the file, write something.

Running `git status` again will show you that file.txt has been **modified**.

#### Revert to a previous commit

Let's now make a second commit.

```bash
$ git add --all
$ git commit -m "Adds content to file.txt"
```

Checking `git log` will show you 2 commits with different ids:

```bash
* 6e78569 (HEAD, master) Adds content to file.txt
* b4faebd Adds file.txt
```

We can revert the file back to the first commit using it's specific commit id (after the word commit) with:

```bash
$ git reset --soft b4faebd
```

This will do a soft reset, where the changes in the file we made are still there - the changes are staged but not committed anymore.

If we want to revert the file back and disregard any changes (dangerous!), we can use:

```bash
$ git reset --hard b4faebd
```

#### Making and cloning repositories

1. Go to your Github account
2. In the top right, hit the + button and select `New repository`
![](https://help.github.com/assets/images/help/repository/repo-create.png)
3. Name your repository `hello_world`
![](https://help.github.com/assets/images/help/repository/repo-create-name.png)
4. Click the big green Create Repository button

We now need to connect our local Git repo with our remote repository on GitHub. We have to add a "remote" repository, an address where we can send our local files to be stored. **Replace** <github-username> with your github handle.

```bash
git remote add origin https://github.com/<github-username>/hello_world.git
```

#### Pushing to Github

In order to send files from our local machine to our remote repository on Github, we need to use the command git push. However, you also need to add the name of the remote, in this case we called it origin and the name of the branch, in this case master.

```bash
git push origin master
```

Refresh your github repo to see the code online!

#### Cloning a repository

Now that everyone has their repository on GitHub, let's clone a repository!

Cloning allows you to get a local copy of a remote repository.

Navigate back to your Actualize directory and **delete your hello_world repository**:

In `Actualize` Folder
```bash
rm -rf hello_world
```

Now navigate to your repository on github (change the username!):

```bash
https://www.github.com/<github-username>/hello_world
```

On the right hand side you will see:

![clone](https://cloud.githubusercontent.com/assets/40461/8228838/dfdc57a0-15a9-11e5-90a7-6c4fa8641ae6.jpg)

Copy this url in the box.

#### Clone the repo!

To retrieve the contents of the repo, all you need to do is (change the username!!):

```bash
$ git clone https://github.com/<github-username>/hello_world.git
```

Git should reply:

```bash
Cloning into 'hello_world'...
remote: Counting objects: 3, done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
Checking connectivity... done.
```

You now have cloned your first repository!


#### Deliverable

Find the git_and_github_solution.rb file in this directory and answer the questions. Once you're done we're going to push your changes to github. 

In the terminal, navigate to the Independent Practice repository (2019-**-yourcohortname). 
```bash
$ git add --all
$ git commit -m "adds today's homework"
$ git push origin *yourbranchname*
```