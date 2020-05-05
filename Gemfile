source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.4.2'
gem 'bootsnap', '1.4.6'
# Use Puma as the app server
gem 'puma', '4.3.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.10.0'
#  Use postgresql as the database for Active Record
gem 'pg', '1.2.3'

gem 'faker', '2.11.0'
gem 'will_paginate',           '3.3.0'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'omniauth-google-oauth2', '0.8.0'
gem 'webpacker', '5.1.1'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '11.1.3', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '4.0.2'
  gem 'listen', '3.2.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.4'
  gem 'minitest-reporters', '1.4.2'
  gem 'guard', '2.16.2'
  gem 'guard-minitest', '2.4.6'
  gem 'codecov', :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
