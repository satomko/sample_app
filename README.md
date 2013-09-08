               #Ruby on Rails Tutorial:  sample application

This is the sample application for
[*Ruby on Rails Tutorial:  Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com).

Heroku:  frozen-wildwood-8451

RVM Bundler Integration (from sample_app dir)
$ rvm get head && rvm reload
$ chmod +x $rvm_path/hooks/after_cd_bundler
$ bundle install --without production --binstubs=./bundler_stubs

