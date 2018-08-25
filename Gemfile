# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# for rails
gem 'draper'
gem 'friendly_id'
gem 'kaminari'
gem 'paperclip'
gem 'pg', '>= 0.18', '< 2.0'
gem 'rails', '~> 5.1.5'
gem 'simple_form'
gem 'slim'
gem 'tinymce-rails'

# for server
gem 'dotenv-rails'
gem 'puma', '~> 3.7'

# for js
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# for style
gem 'acts_as_list'
gem 'bootstrap', '~> 4.1.1'
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'
gem 'select2-rails'

# for devise
gem 'devise'
gem 'devise-bootstrap-views', git: 'https://github.com/hisea/devise-bootstrap-views.git'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'parallel_tests'
  gem 'progress_bar'
  gem 'rack-mini-profiler'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubycritic'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

group :development do
  gem 'annotate'
  gem 'brakeman'
  gem 'bullet'
  gem 'capistrano',         require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano-rails-db', require: false
  gem 'capistrano-rails-logs-tail'
  gem 'capistrano-rvm',     require: false
  gem 'capistrano3-puma',   require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_best_practices'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
