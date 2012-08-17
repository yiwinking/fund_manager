#source 'https://rubygems.org'
source 'http://ruby.taobao.org'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'rails', '3.2.8'

# Javascript library
gem 'jquery-rails'

# Database
# gem 'pg'
gem 'sqlite3'

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

# File Uploads
# gem 'paperclip'
# gem 'carrierwave'
# gem 'mini_magick'

# Paginator
# gem 'kaminari'
# gem 'will_paginate'

# Form tool
gem "simple_form"

# Authentication
gem "bcrypt-ruby", :require => "bcrypt"
gem 'simple_login', git: 'git@github.com:zernel/simple_login.git', branch: :develop


group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'bootstrap-sass'
end

group :development, :test do
  gem 'quiet_assets'
  gem 'sqlite3'
  gem 'thin'
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
  if RUBY_PLATFORM =~ /linux/
    gem 'rb-inotify'
    gem 'libnotify'
  end
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'rack_session_access'
  # timetracking
  # gem 'prickle'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
end
