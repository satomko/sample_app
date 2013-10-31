

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

# to delete a dev branch
git branch -d dev_br

# to revert to a previous commit and update github
git reset --hard <old-commit-id>
git push -f


# to precompile headers
RAILS_ENV=production bundle exec rake assets:precompile

# to create new db (and apply changes)
bundle exec rake db:migrate

# to prepare the test database
bundle exec rake db:test:prepare


# to run db changes on heroku
heroku run rake db:migrate
# if you get "timeout awaiting process" errors try running this instead
heroku run:detached rake db:migratej





