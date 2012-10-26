# Section 6.5 Figure 6.11 (top)
# http://pastebin.com/SnVg4jDz

# require 'spec_helper' - not needed here?

# spec/factories/movie.rb

FactoryGirl.define do
  factory :movie do
    title 'A Fake Title' # default values
    rating 'PG'
    release_date { 10.years.ago }
  end
end
