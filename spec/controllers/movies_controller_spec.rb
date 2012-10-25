# Section 6.2 Figure 6.2
# http://pastebin.com/Kyie9NhS

require 'spec_helper'

# the following specs describe the behavior of the MoviesController class
describe MoviesController do

  # this first set of specs describe the behavior of the method that searches TMDb
  describe 'searching TMDb' do
  
    # three placeholders for the test code we wish we had
    it 'should call the model method that performs TMDb search' do

      # Screencast 6.2.1
      # pending 'choose a name for the model method'

      # Section 6.3 Figure 6.4
      # http://pastebin.com/cd4pVa0a
      post :search_tmdb, {:search_terms => 'hardware'}

    end

    it 'should select the Search Results template for rendering' do

      # Screencast 6.2.1
      flunk 'No template exists yet'
    end

    it 'should make the TMDb search results available to that template'
    
  end
end

