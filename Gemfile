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
  gem 'faker'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'letter_opener_web'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'database_cleaner-active_record'
  gem 'database_cleaner-redis'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'factory_bot_rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'letter_opener_web'
gem 'rubocop', require: false

gem 'simple_form'
gem 'rails-i18n'
gem 'enum_help'
gem 'kaminari'
gem 'bootstrap4-kaminari-views'