## to sync your current branch with master 
# current branch is :: my_branch

git checkout master 
git pull origin master 

# then move to your branch 
git checkout my_branch 
git merge --no-commit --no-ff master 
# then resolve conflicts


 
