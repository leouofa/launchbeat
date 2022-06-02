# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 6.1.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'

# Presentation
gem 'sassc'
gem 'slim-rails'

# gem 'rapid_ui', path: '~/src/hobbies/rapid_ui'
gem 'rapid_ui', git: 'https://github.com/realstorypro/rapid-ui.git'
gem 'view_component'
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
gem 'simple_form'

# JS Frameworks
gem 'sprockets', '~> 4.0'
gem 'turbo-rails'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
