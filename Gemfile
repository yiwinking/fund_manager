source 'https://rubygems.org'
#source 'http://ruby.taobao.org'

ruby '1.9.3'
gem 'rails', '3.2.8'

gem "heroku"
gem 'thin'

# Javascript library
gem 'jquery-rails'

# Javascript engine
gem 'execjs'
gem 'therubyracer'

# Omniauth
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-identity'

# Design Pattern Practice
# gem 'cells'
# gem 'draper'

# Paginator
# gem 'kaminari'

# Form tool
gem "simple_form"

# Authentication
gem "bcrypt-ruby", :require => "bcrypt"

gem 'ancestry'
gem 'simple_enum'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'bootstrap-sass'
end

group :development, :test do
  gem 'quiet_assets'
  gem 'sqlite3'
  gem 'pry'
  gem 'ffaker'
  gem "spork"
  gem 'spork-rails'
  gem "rspec-rails"
  gem 'rspec-cells'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'capybara-webkit'
  gem "guard-spork"
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'guard-rails'
  gem "guard-bundler"
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'rack_session_access'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
end

group :production do
  gem 'pg'
end
