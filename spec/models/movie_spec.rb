# Section 6.5 Figure 6.10 (bottom)
# http://pastebin.com/VRqWKPeQ

# also need this to keep tests Independent! my first "error in code" erratum.
require 'spec_helper'

# spec/models/movie_spec.rb:

describe Movie do
  # fixtures :movies # commented out in Section 6.5 Figure 6.11 (bottom) 
  it 'should include rating and year in full name' do
    
    # Section 6.5 Figure 6.11 (bottom) 
    # movie = movies(:milk_movie) 
    movie = FactoryGirl.build(:movie, :title => 'Milk') #movies(:milk_movie) 
    
    # "undefined method" as of Section 6.5 Figure 6.11 - also doesn't check year
    movie.name_with_rating.should == 'Milk (R)'  
    #movie.title.should == 'Milk' # this works as of Section 6.5 Figure 6.11  
  end
end

# Section 6.5 Figure 6.11 (bottom) 
# or if you mix in FactoryGirl's syntax methods (see FactoryGirl README):
# describe Movie do
#   subject { create :movie, :title => 'Milk', :rating => 'R' }
#   its :name_with_rating { should == 'Milk (R)' }
# end

