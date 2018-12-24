# blogdown
Draft repo for Rmd before publication

# blogdown
Blog source

## https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/

cd /home/edouard/R-project/blogdown-HumanitaRian-useR-group/public
git init
git add .
git commit -m 'initialcommit'

Link Remote repo with Local repo

Now use copied URL to link your local repo with remote GitHub repo. When you clone a repository with git clone, it automatically creates a remote connection called origin pointing back to the cloned repository. The command remote is used to manage set of tracked repositories.

    
    git remote add origin https://github.com/HumanitaRian-useR-group/HumanitaRian-useR-group.github.io.git

Synchronize

Now we need to merge local code with remote code. This step is critical otherwise we won be able to Push Code on Github. You must call 'git pull' before pushing your code.


    git pull origin master --allow-unrelated-histories

Commit your code

Finally push all changes on Github

    git push -u origin master
