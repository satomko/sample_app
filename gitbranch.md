

# from dev branch
git add .
git commit -m "blah blah blah"
# switch to master branch
git checkout master
git merge dev-branch
git push
git push heroku


# to create new dev-branch
git checkout -b new-dev-branch

# to revert to a previous commit and update github
git reset --hard <old-commit-id>
git push -f



