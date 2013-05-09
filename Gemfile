source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'nested_form'

gem 'haml-rails' #Using haml instead of html and erb
gem 'formtastic' #Smart form builder

gem 'bootstrap-sass'
gem 'formtastic-bootstrap'

gem 'puma' #Better webserver for development

gem 'country_select'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
end

gem 'jquery-rails'


group :development do
  gem 'quiet_assets' #No so many useless line in development log

  gem 'better_errors' #More informative error page
  gem 'binding_of_caller' #Need for better errors

  gem 'guard-livereload' #Launch guard in your console, launch rails server and in your browser your edited page will automatically refresh.
  gem 'rack-livereload'

  gem 'rb-fsevent' if RUBY_PLATFORM.match(/darwin/) #Using OSX notification system
  gem 'rb-inotify' unless RUBY_PLATFORM.match(/darwin/) #Using Ubunt's notification system

  gem 'meta_request' #Have to install extension in Chrome and everything will be in Development panel. Install RailsPanel extension in Chrome from Chrome WebStore.

  gem 'hirb' #Nice tables in console if you enable with 'Hirb.enable' command if you start rails console.
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
