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
      #TmdbMovie.find(:title => string) # from Section 6.6 Figure 6.12 (bottom)
      TmdbMovie.find(:title => string, :expand_results => false) # my personal addition
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
  
  
  # Section 7.1 Figure 7.3
  # http://pastebin.com/2GtWshSb
  # these validations will be triggered by Movie#valid?() (called when saving to db)
  @@RATINGS = %w[G PG PG-13 R NC-17]  #  %w[] shortcut for array of strings
  
  # pre-defined validation behaviors in ActiveModel::Validations::ClassMethods
  validates :title, :presence => true
  validates :release_date, :presence => true
  
  validate :released_1930_or_later # uses custom validator below
  validates :rating, :inclusion => {:in => @@RATINGS}, :unless => :grandfathered?
  def released_1930_or_later
    # release_date presence was also validated above, lest it be nil
    errors.add(:release_date, 'must be 1930 or later') if
      self.release_date < Date.parse('1 Jan 1930')
  end
  
  def grandfathered? 
    #self.release_date >= @@grandfathered_date 
    self.release_date <= @@grandfathered_date # from erratum list
  end  
  @@grandfathered_date = Date.parse('1 November 1968') # from erratum list

  # # try in console:
  # m = Movie.new(:title => '', :rating => 'RG', :release_date => '1929-01-01')
  # # force validation checks to be performed:
  # m.valid?  # => false
  # m.errors[:title] # => ["can't be blank"]
  # m.errors[:rating] # => ["is not included in the list"]
  # m.errors[:release_date] # => ["must be 1930 or later"]
  # m.errors.full_messages # => ["Title can't be blank", "Rating is not included in the list", "Release date must be 1930 or later"]


end
