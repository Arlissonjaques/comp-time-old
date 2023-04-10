source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.16', require: false
# Bootstrap rubygem for Rails. Read more: https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 5.2.2'
# A gem to automate using jQuery with Rails. Read more: https://github.com/rails/jquery-rails
gem 'jquery-rails'
# Flexible authentication solution for Rails with Warden.
gem 'devise'
# Oauth2 strategy for Google
gem 'omniauth-google-oauth2'
# Provides CSRF protection on OmniAuth request endpoint on Rails application.
gem 'omniauth-rails_csrf_protection'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry', platforms: [:mri, :mingw, :x64_mingw]
  # RSpec for Rails 5+. Read more: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 5.0.0'
  # Simple one-liner tests for common Rails functionality. Read more: https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '~> 4.0'
  # A Ruby code quality reporter. Read more: https://github.com/whitesmith/rubycritic
  gem 'rubycritic', require: false
  # Code coverage for Ruby with a powerful configuration library. Read more: https://github.com/simplecov-ruby/simplecov
  gem 'simplecov', require: false
  # factories. Read more: https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails'
  # A library for generating fake data such as names, addresses, and phone numbers. Read more: https://github.com/faker-ruby/faker
  gem 'faker'
  # Strategies for cleaning databases using ActiveRecord. Read more: https://github.com/DatabaseCleaner/database_cleaner-active_record
  gem 'database_cleaner-active_record'
  # A Ruby gem to load environment variables from `.env`.
  gem 'dotenv-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Better error page for Rack apps
  gem 'better_errors'
  # Annotate Rails classes with schema and routes info. Read more: https://github.com/ctran/annotate_models
  gem 'annotate'
  # A Ruby static code analyzer and formatter, based on the community Ruby style guide. Read more: https://github.com/rubocop/rubocop
  gem 'rubocop', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
