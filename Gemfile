source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby "2.0.0"
gem 'rails', '4.0.0'
gem 'activeadmin', github: 'gregbell/active_admin'

# Use mysql as the database for Active Record
gem 'mysql2'
gem "paperclip", "~> 3.0"
# gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
# Use SCSS for stylesheets
# gem 'sass-rails', '~> 4.0.0'
gem 'devise'
gem 'mysql2psql'
# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
# gem 'coffee-rails', '~> 4.0.0'

#gem 'rvm-capistrano'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem "prawnto_2", :require => "prawnto"
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# gem 'capistrano', '~> 3.0.1'

# rails specific capistrano funcitons
# gem 'capistrano-rails', '~> 1.1.0'

# integrate bundler with capistrano
# gem 'capistrano-bundler'

group :assets do
  gem 'therubyracer',:platforms => :ruby, :group => [:development,:production]
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'jquery-rails'
end


group :production do
  gem 'pg'
  # Deploy with Capistrano 	
end
gem 'rails_12factor', group: :production


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
 gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
