class Movie < ActiveRecord::Base

  # Section 6.6 Figure 6.14
  # http://pastebin.com/5LhUz8uV
  class Movie::InvalidKeyError < StandardError; end


  # Section 6.6 Figure 6.12 (bottom)
  # http://pastebin.com/B1wqGuAj
  def Movie.find_in_tmdb(string)

    # Section 6.6 Figure 6.14 cont. - wrap function call with exception handling
    begin
      TmdbMovie.find(:title => string) # from Section 6.6 Figure 6.12 (bottom)
    rescue ArgumentError => tmdb_error
      raise Movie::InvalidKeyError, tmdb_error.message
    end

  end



end
