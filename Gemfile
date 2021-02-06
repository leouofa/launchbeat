# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'good_ui', github: 'realstorypro/good-ui'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'redis', '~> 4.0'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'turbo-rails'
gem 'webpacker', '~> 5.0'
gem 'simple_form', '5.0.0'
gem 'slim-rails'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
