source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.0"
gem 'rails', '5.1.6'

gem 'cancan'
gem 'devise'

gem 'jquery-rails'
gem 'pg', '~> 1.0.0'

gem 'redcarpet'
gem 'pygments.rb'

gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'puma'

gem 'titleize'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'derailed_benchmarks'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug'
  #gem 'spring'
end

