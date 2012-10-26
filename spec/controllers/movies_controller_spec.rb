# Section 6.2 Figure 6.2
# http://pastebin.com/Kyie9NhS

require 'spec_helper'

# the following specs describe the behavior of the MoviesController class
describe MoviesController do

  # this first set of specs describe the behavior of the method that searches TMDb
  describe 'searching TMDb' do
  
    # Section 6.4 Figure 6.7 - n.b. "before :all" would run the block only ONCE
    # http://pastebin.com/dubDZGTQ
    before :each do
      @fake_results = [mock('movie1'), mock('movie2')]
    end
  
  
    # Section 6.2 Figure 6.2 cont. three placeholders for the test code we wish we had
    it 'should call the model method that performs TMDb search' do

      # Screencast 6.2.1
      # pending 'choose a name for the model method'

      # Section 6.3 Figure 6.5
      # http://pastebin.com/vDRTDrkw
      #fake_results = [mock('movie1'), mock('movie2')] # commented out Section 6.4 Figure 6.7
      Movie.should_receive(:find_in_tmdb).with('hardware').and_return(@fake_results) # Section 6.4 Figure 6.7 changed from fake_results

      # Section 6.3 Figure 6.4
      # http://pastebin.com/cd4pVa0a
      post :search_tmdb, {:search_terms => 'hardware'}

    end

    # Section 6.4 Figure 6.9 moar refactoring
    describe 'after valid search' do
    
      before :each do
        Movie.stub(:find_in_tmdb).and_return(@fake_results) 
        post :search_tmdb, {:search_terms => 'hardware'}
      end
    
      it 'should select the Search Results template for rendering' do

        # Screencast 6.2.1
        # flunk 'No template exists yet'

        # Section 6.4 Figure 6.6
        # http://pastebin.com/3HELV51D
        #fake_results = [mock('Movie'), mock('Movie')] # commented out Section 6.4 Figure 6.7
        
        # Section 6.4 Figure 6.7 changed from fake_results
        # Section 6.4 Figure 6.9 refactored first 2 lines into "before"
        # Movie.stub(:find_in_tmdb).and_return(@fake_results) 
        # post :search_tmdb, {:search_terms => 'hardware'}
        response.should render_template('search_tmdb')

      end

      # Section 6.4 Figure 6.8
      # http://pastebin.com/ymzLR5ni
      it 'should make the TMDb search results available to that template' do
      
        # Section 6.4 Figure 6.9 refactored first 2 lines into "before"
        # Movie.stub(:find_in_tmdb).and_return(@fake_results)
        # post :search_tmdb, {:search_terms => 'hardware'}        
        assigns(:movies).should == @fake_results
        
      end
      
    end # after valid search
  end # searching TMDb
end# MoviesController

