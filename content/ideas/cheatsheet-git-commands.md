
## Create and Clone
| Git Command | Action |
|:----:|:------|
| git init | create new repository |
| git clone _/path/to/repository_ | clone local repository |
| git clone _username@host:/path/to/repository_ | clone remote repository |

## Add and Remove
| Git Command | Action |
|:----:|:------|
| git add _filename_ | add changes to INDEX |
| git add * | add all changes to INDEX |
| git remove _filename_ | remove / delete |

## Commit and Synchronize
| Git Command | Action |
|:----:|:------|
| git commit -m "_commit message_" | commit changes |
| git push origin master | | push changes to remote repository |
| git remote add origin _server_ | connect local repository to remote repository |
| git pull | update local repository with the remote changes |

## Branch
| Git Command | Action |
|:----:|:------|
| git checkout -b _branch_ | create new branch |
| git checkout master | switch to master branch |
| git branch -d _branch_ | delete branch |
| git push origin _branch_ | push branch to remote repository |

## Merge
| Git Command | Action |
|:----:|:------|
| git merge _branch_ | merge changes from another branch |
| git diff _source-branch_ _target-branch_ | view changes between two branches |

## Tag
| Git Command | Action |
|:----:|:------|
| git _tag_ _commit-ID_ | create tag |
| git log | get commit IDs |

## Restore
| Git Command | Action |
|:----:|:------|
| git checkout -- _filename_ | replace working copy with latest from HEAD |

## Stash
| Git Command | Action |
|:----:|:------|
| git stash | saves files on a stack of unfinished changes that you can reapply at any time |
| git stash applied | reapply the one you just stashed |
| git stash list | see which stashes you’ve stored |

# Loading the GitHub Repository for the First Time
Within the ~.bash directory, use git to load the files to GitHub

    cd ~/.bash
    git remote add origin https://github.com/jeffskinnerbox/.bash.git
    git push -u origin master

# Updating the Local Git Repository
Within the .vim directory, do a "get status" to see what will be included in the commit,
add files (or remove) that are required, and then do the commit to the local git repository.

    git status
    git add --all
    git commit --dry-run
    git commit -m <comment>

# Updating the Remote Repository (i.e. GitHub)
To which shows you the URL that Git has stored for the shortname for
the remote repository (i.e. GitHub):

    git remote -v

Now to push your files to the GitHub repository

    git push -u origin master

# Retrieving Update From Remote Repository (i.e. GitHub)
To retrieve these updates on another system, use

    git pull origin master

To overwrite everything in the local directory

    git fetch --all
    git reset --hard origin/master

Explanation: `git fetch` downloads the latest from remote without trying to merge or rebase anything.
Then the `git reset` resets the master branch to what you just fetched.
The `--hard` option changes all the files in your working tree to match the files in `origin/master`.
If you have any files that are _not_ tracked by Git,
these files will not be affected.

# Contribute to Someone's Repository
See NOTE.md for ThingSpace Demo (tsdemo)

* [How to Contribute to Someone's GitHub Repository](https://www.youtube.com/watch?v=yr6IzOGoMsQ)
* [Contribute to someone's repository](http://kbroman.org/github_tutorial/pages/fork.html)
* [The beginner's guide to contributing to a GitHub project](https://akrabat.com/the-beginners-guide-to-contributing-to-a-github-project/)
* [Contributing to a GitHub repository](https://docs.mendix.com/howto50/contributing-to-a-github-repository)
* [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)

## Sources
These are the sources for the commands documented above in the tables.

* [git cheat sheet](http://rogerdudler.github.io/git-guide/files/git_cheat_sheet.pdf)
* [The most useful git commands](https://orga.cat/posts/most-useful-git-commands)

## Requires More Research
These links should be explored to see it additional information
could be gathered for this cheat sheet.

* [git - the simple guide](http://rogerdudler.github.io/git-guide/)
* [Git Tutorial](https://www.atlassian.com/git/tutorial)
* [Getting Git Right](https://www.atlassian.com/git/?utm_source=bitbucket&utm_medium=link&utm_campaign=homepage&utm_content=free_git_tutorials)
* [Git Tutorial](http://www.tutorialspoint.com/git/index.htm)
