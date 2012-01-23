source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'rspec'
gem 'rspec-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# REFINERY CMS ================================================================
# Anything you put in here will be overridden when the app gets updated.

# gem 'refinerycms-pages'
gem 'refinerycms', :git => "git://github.com/resolve/refinerycms.git"

group :development, :test do
  # To use refinerycms-testing, uncomment it (if it's commented out) and run 'bundle install'
  # Then, run 'rails generate refinerycms_testing' which will copy its support files.
  # Finally, run 'rake' to run the tests.
  # gem 'refinerycms-testing', '1.0.8'
end

# END REFINERY CMS ============================================================

# USER DEFINED


# # Specify additional Refinery CMS Engines here (all optional):
# gem 'refinerycms-inquiries',    '~> 1.0'
gem 'refinerycms-blog', :git => "git://github.com/resolve/refinerycms-blog.git", :branch => 'rails-3-1'
# gem 'refinerycms-search', '~> 0.9.8'
# # gem "refinerycms-news",         '~> 1.2'
# # gem 'refinerycms-page-images',  '~> 1.0'
# # gem 'refinerycms-memberships', '1.0', :path => 'vendor/engines'
# 
# gem 'refinerycms-calendar', :git => "git://github.com/resolve/refinerycms-calendar.git"
# gem 'refinerycms-page_roles', '0.1', :path => 'vendor/engines'
# 
# # Add i18n support (optional, you can remove this if you really want to).
# gem 'refinerycms-i18n',         '~> 1.0.0'
# 
# # END USER DEFINED
# 
