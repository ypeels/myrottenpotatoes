# also need this to keep tests Independent! my first "error in code" erratum.
require 'spec_helper'

# Section 6.5 Figure 6.10 (bottom)
# http://pastebin.com/VRqWKPeQ

# spec/models/movie_spec.rb:

describe Movie do
  # omitted in Section 6.6 Figure 6.12...
  ## fixtures :movies # commented out in Section 6.5 Figure 6.11 (bottom) 
  #it 'should include rating and year in full name' do
  #  
  #  # Section 6.5 Figure 6.11 (bottom) 
  #  # movie = movies(:milk_movie) 
  #  movie = FactoryGirl.build(:movie, :title => 'Milk') #movies(:milk_movie) 
  #  
  #  # "undefined method" as of Section 6.5 Figure 6.11 - also doesn't check year
  #  movie.name_with_rating.should == 'Milk (R)'  
  #  #movie.title.should == 'Milk' # this works as of Section 6.5 Figure 6.11  
  #end
  
  # Section 6.6 Figure 6.12 (top)
  # http://pastebin.com/rQfFZhgJ
  describe 'searching Tmdb by keyword' do

    # string revised in Section 6.6 Figure 6.13
    # http://pastebin.com/TJXJk5wQ
    # it 'should call Tmdb with title keywords' do
    it 'should call Tmdb with title keywords given valid API key' do
    
      # should_receive stubs out the call to TmdbMovie.find(.)!
      TmdbMovie.should_receive(:find).with(hash_including :title => 'Inception')
      Movie.find_in_tmdb('Inception')
      
    end

    # Section 6.6 Figure 6.13   
    # http://pastebin.com/TJXJk5wQ    
    it 'should raise an InvalidKeyError with no (blank) API key' do
    
      # Section 6.7 Figure 6.16
      # http://pastebin.com/RRKJDpbn
      Movie.stub(:api_key).and_return('') 
     
      lambda { Movie.find_in_tmdb('Inception') }.should raise_error(Movie::InvalidKeyError)
    
    end
    
    # Section 6.7 Figure 6.17
    # http://pastebin.com/dgSHRKYk
    it 'should raise an InvalidKeyError with invalid API key' do
      
      # Section 6.7 Figure 6.19
      # http://pastebin.com/aMnxZz5E
      #Movie.stub(:api_key).and_return('INVALID')
      TmdbMovie.stub(:find).and_raise(RuntimeError.new("stub API returned status code '404'"))
      
      lambda { Movie.find_in_tmdb('Inception') }.should raise_error(Movie::InvalidKeyError)
      
    end
  
  end

  
  
end

# Section 6.5 Figure 6.11 (bottom) 
# or if you mix in FactoryGirl's syntax methods (see FactoryGirl README):
# describe Movie do
#   subject { create :movie, :title => 'Milk', :rating => 'R' }
#   its :name_with_rating { should == 'Milk (R)' }
# end

