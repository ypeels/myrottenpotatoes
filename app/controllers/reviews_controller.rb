# Section 7.5 Figure 7.19(a)
# http://pastebin.com/qwzV1tZb
class ReviewsController < ApplicationController

  # shared error-checking for new() and create()
  # guarantees @current_user and @movie have valid values, once those functions begin
  before_filter :has_moviegoer_and_movie, :only => [:new, :create]
  protected
  def has_moviegoer_and_movie
    unless @current_user
      flash[:warning] = 'You must be logged in to create a review.'
      redirect_to login_path
    end
    unless (@movie = Movie.find_by_id(params[:movie_id]))
      flash[:warning] = 'Review must be for an existing movie.'
      redirect_to movies_path
    end
  end

  public
  def new
    @review = @movie.reviews.build
  end
  def create
    # since moviegoer_id is a protected attribute [in the Review model] that won't get
    # assigned by the mass-assignment from params[:review], we set it
    # by using the << method on the association.  We could also
    # set it manually with [@]review.moviegoer = @current_user.
    @current_user.reviews << @movie.reviews.build(params[:review])
    
    # winging it - by analogy with MoviesController#create()
    redirect_to movie_reviews_path(@movie.id)
    
  end
  
  # Section 7.5 winging it...basic stub to have the "Create Review" button go somewhere
  # "erratum" - or rather, required to get New page to render?
  def index
    @movie = Movie.find(params[:movie_id])
  end
end
