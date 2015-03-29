class HomeController < ApplicationController

  # GET /
  def home
    @movies = Movie.order :title
  end

  # GET /home/1
  # GET /home/1.json
  def show
    @movie = Movie.find(params[:id])
  end

end