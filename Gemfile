source 'https://rubygems.org'

ruby "2.1.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',          group: :doc, require: false

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/jonleighton/spring
gem 'spring',        group: :development

#Icons
gem "font-awesome-rails"

# Авторизация и аутентификация
gem 'devise'

# Модели, value object и form objects
gem 'validates'

# Управление версиями проекта
gem 'semver2'

# Почта
#gem 'recipient_interceptor'
#http://robots.thoughtbot.com/delivering-all-email-from-staging-to-a-group-email

#Загрузка и обработка файлов
gem 'mini_magick'
gem 'carrierwave'

#Навигация
gem 'simple-navigation', :git => 'git://github.com/andi/simple-navigation.git'
gem 'simple-navigation-bootstrap'

#Формы
gem 'simple_form'

#Пэйджинг
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'

gem 'haml-rails'

gem 'bootstrap-sass'
gem 'compass'
gem 'compass-rails'

#assets
# Use edge version of sprockets-rails
gem 'sprockets-rails', github: 'rails/sprockets-rails'

gem 'select2-rails'
gem 'bootstrap-datetimepicker-rails'
gem 'bootstrap-datepicker-rails'

group :development do
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'awesome_print'
  # HolePicker is a Ruby gem for quickly checking all your Gemfile.lock files for gem versions with known vulnerabilities.
  gem 'holepicker', :require => false

  gem 'pry-rails'
  gem 'pry-theme'
  gem 'pry-pretty-numeric'
  gem 'pry-syntax-hacks'
  gem 'pry-highlight'
  gem 'pry-git'
  gem 'pry-developer_tools'
  gem 'pry-remote'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'

  # Молчаливые ассеты
  gem 'quiet_assets'

  gem "mailcatcher", :require => false #Catches mail and serves it through a dream
  #gem 'foreman' #Manage Procfile-based applications
end

group :test do
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :production do
  gem 'unicorn'
  gem 'therubyracer', platforms: :ruby
  gem 'newrelic_rpm'
end