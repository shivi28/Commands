## to sync your current branch with master 
# current branch is :: my_branch

git checkout master 
git pull origin master 

# then move to your branch 
git checkout my_branch 
git merge --no-commit --no-ff master 
# then resolve conflicts

**How to rebase your current branch from root branch**

```
# on master branch 
git checkout -b feature_branch 
# move to feature_branch and then do dvelopment by pushing multiple commits
git rebase -i origin/master~2
git push origin feature_branch_name --force
```
 
