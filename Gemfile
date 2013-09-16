source 'https://rubygems.org'

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ ? require_as : false
end
# Mac OS X
def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ ? require_as : false
end

gem 'rails', '3.2.3'
#gem 'bootstrap-sass', '2.0.0'
gem 'bootstrap-sass', '2.3.2.1'
gem 'sass-rails',   '3.2.4'
#gem 'bootstrap_helper'

group :development do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.9.0'
  gem 'guard-rspec', '0.5.5'
end
 

# Gems used only for assets and not required
# in production environments by default.
group :assets do
 #gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails'

group :test do
  gem 'capybara', '1.1.2'
  gem 'rspec-rails', '2.9.0' 
  # System-dependent gems
  gem 'rb-fsevent', '>=0.4.3.1', :require => darwin_only('rb-fsevent')
  gem 'growl', '1.0.3', :require => darwin_only('growl')
  gem 'rb-inotify', '0.9', :require => linux_only('rb-inotify')
  gem 'libnotify', '0.5.9', :require => linux_only('libnotify')
end

group :production do
  gem 'pg', '0.12.2'
end


