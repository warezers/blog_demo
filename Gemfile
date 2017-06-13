source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'

gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'coffee-script-source','1.8.0'
gem 'pygments.rb', '~> 0.6.3'
gem 'redcarpet', '~> 3.4'
gem 'friendly_id', '~> 5.2.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'mail_form'

group :development, :test do
 
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  
  gem 'web-console', '>= 3.3.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end
