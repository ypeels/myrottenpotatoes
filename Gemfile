source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
  gem 'therubyracer'
  gem 'therubyracer'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'


# Section 4.1
# http://pastebin.com/AGMAxaag
# use Haml for templates
gem 'haml'
# use Ruby debugger
group :development, :test do
  gem 'ruby-debug19'
end


# Section 5.4
# http://pastebin.com/MMZdRmB3
group :test, :development do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
  
  # Section 6.2 paragraph after Figure 6.2
  gem 'rspec-rails'

  # Screencast 6.2.1
  gem 'ZenTest'
  
  # Section 6.5 Figure 6.11 caption
  gem 'factory_girl_rails'

end

# Section 6.1: run bundle install --without production after updating
# actually, it's included in the bookware? meh
gem 'ruby-tmdb'

# Section 7.2 paragraph after Figure 7.10
gem 'omniauth-twitter'
