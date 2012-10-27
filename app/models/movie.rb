class Movie < ActiveRecord::Base

  # Section 6.6 Figure 6.14
  # http://pastebin.com/5LhUz8uV
  class Movie::InvalidKeyError < StandardError; end

  # Section 6.7 Figure 6.15
  # http://pastebin.com/aGFD3CLb
  def Movie.api_key
    #'cc4b67c52acb514bdf4931f7cedfd12b' # replace with YOUR Tmdb key
    # read from config/myconfig.yml (not shared on github)
    APP_CONFIG['tmdb_api_key']
  end


  # Section 6.6 Figure 6.12 (bottom)
  # http://pastebin.com/B1wqGuAj
  def Movie.find_in_tmdb(string)

    # Section 6.7 Figure 6.15 cont.
    Tmdb.api_key = self.api_key

    # Section 6.6 Figure 6.14 cont. - wrap function call with exception handling
    begin
      TmdbMovie.find(:title => string) # from Section 6.6 Figure 6.12 (bottom)
    rescue ArgumentError => tmdb_error
      raise Movie::InvalidKeyError, tmdb_error.message
    rescue RuntimeError => tmdb_error # Section 6.7 Figure 6.18 - http://pastebin.com/1C08dxAu
      if tmdb_error.message =~ /status code '404'/
        raise Movie::InvalidKeyError, tmdb_error.message
      else
        raise RuntimeError, tmdb_error.message
      end
    end

  end



end
