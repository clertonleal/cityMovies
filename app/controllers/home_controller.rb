class HomeController < ApplicationController

  # GET /
  def home
    @movies = Movie.all
  end

  # GET /home/1
  # GET /home/1.json
  def show
    @movie = Movie.find(params[:id])
  end

end