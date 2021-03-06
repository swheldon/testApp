source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Load dotenv so rails has all secrets in central location
gem 'dotenv-rails', require: 'dotenv/rails-now'
# Use bootsnap so rails loads assets faster
gem 'bootsnap'
# Use PostGreSQL for production database
gem 'pg'
# Use mysql2 as the database for Active Record
gem 'mysql2', '~> 0.4.10'
# Use updated bundler
gem 'bundler'
# Pass secrets to Heroku without storing them in Github
gem 'heroku_secrets', github: 'alexpeattie/heroku_secrets'
# Use rails12factor to precompile assets
gem 'rails_12factor', group: :production
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use jquery to allow for use of jquery dependant gems
gem 'jquery-rails'
# Use popper to allow for using javascript
gem 'popper'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use webpacker to automatically download Yarn for heroku
gem 'webpacker', require: false
gem 'bootstrap-datepicker-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use bootstrap to build and display responsive html
gem 'bootstrap', '~> 4.0.0'
# Use bootstrap_form to quickly create forms in bootstrap
gem "bootstrap_form", git: "https://github.com/bootstrap-ruby/bootstrap_form.git", branch: "master"
# Use Devise for user authentication
gem 'devise'
# Use devise-bootstrap-views to generate authentication related views in bootstrap 4
gem 'devise-bootstrap-views'
#
gem 'rails_admin', '~> 1.3.0'
# Use sendgrid for confirmation email
gem 'sendgrid'
# Use carrierwave as file uploader
#gem 'carrierwave'
# Upload images to Amazon S3
gem 'aws-sdk-s3'
# Required for image versioning
#gem 'image_processing'
# Required for image versioning
#gem 'mini_magick'
# Use Google Maps API for address autocomplete
# gem '?'
# Use jquery-datatables for viewing index pages with datatables
gem 'jquery-datatables'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

source 'https://rails-assets.org' do
  gem 'rails-assets-dropzone'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'yaml_db' 
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
