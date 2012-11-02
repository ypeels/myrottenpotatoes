# Section 4.4 Figure 4.5
# http://pastebin.com/KGWiEt09
# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  # Section 4.4 Figure 4.8
  # http://pastebin.com/TESrHmkk
  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.html.haml by default
  end

  # Section 4.6 stub function
  # http://pastebin.com/uFdnJNmB
  def new
    # default: render 'new' template
  end

  # Section 4.7
  # http://pastebin.com/FFgBP1Jy
  def create
  
    # Section 7.1 Figure 7.4
    # http://pastebin.com/CM6ntZzK
    # @movie = Movie.create!(params[:movie])
    @movie = Movie.new(params[:movie])
    if @movie.save
      # Section 4.7
      # http://pastebin.com/N1n4Pkr0
      flash[:notice] = "#{@movie.title} was successfully created."
      
      redirect_to movies_path
    else
      render 'new' # note, 'new' template can access @movie's field values!
    end
    
  end # MoviesController#create()

  # Section 4.8
  # http://pastebin.com/jdTS5P7Q
  def edit
    @movie = Movie.find params[:id]
  end  
  def update
    @movie = Movie.find params[:id]
	  
    # Section 7.1 Figure 7.4
    # http://pastebin.com/CM6ntZzK
    # @movie.update_attributes!(params[:movie])
    if @movie.update_attributes(params[:movie])    
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit' # note, 'edit' template can access @movie's field values!
    end
    
  end # MoviesController#update()

  # Section 4.8
  # http://pastebin.com/8ZYbFUcb
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

  # Section 5.6 Figure 5.8 (top)
  # http://pastebin.com/yVNvBKNe
  def search_tmdb
  
    # Screencast 6.3.1: comment original body out, to match screencast ~3:00
    # # hardwire to simulate failure
    # flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    # redirect_to movies_path

    # Section 6.3 last words
    # http://pastebin.com/MDsSSwU1
    # also, http://pastebin.com/5uacfzyZ
    @movies = Movie.find_in_tmdb(params[:search_terms])
    
  end
  
end
