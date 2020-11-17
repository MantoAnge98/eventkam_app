source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
gem 'bootsnap', '>= 1.1.0', require: false

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

# Frontend
gem 'sass-rails', '~> 5.0'
gem 'webpacker', '~> 3.5'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Backend
gem 'carrierwave'
gem 'mini_magick', '~> 4.8'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'seed-fu', '~> 2.3'
gem 'jbuilder', '~> 2.5'
# gem 'rmagick'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'

#Authentication
gem 'devise'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'database_cleaner'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'letter_opener_web'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov'
  gem 'timecop'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'simple_form'
gem 'rails-i18n'
gem 'enum_help'
gem 'kaminari'
gem 'bootstrap4-kaminari-views'