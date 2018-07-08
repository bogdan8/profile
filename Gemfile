source 'https://rubygems.org'
ruby '2.4.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# for rails
gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'simple_form'
gem 'tinymce-rails'
gem 'draper'
gem 'slim'
gem 'kaminari'
gem 'friendly_id'

# for server
gem 'puma', '~> 3.7'

# for js
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'

# for style
gem 'bootstrap', '~> 4.1.1'
gem 'sass-rails', '~> 5.0'
gem 'font-awesome-rails'

# for devise
gem 'devise'
gem 'devise-bootstrap-views', git: 'https://github.com/hisea/devise-bootstrap-views.git', branch: 'bootstrap4'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rubycritic'
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
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'brakeman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
