class MovieHoursController < ApplicationController
  before_action :set_movie_hour, only: [:show, :edit, :update, :destroy]

  # GET /movie_hours
  # GET /movie_hours.json
  def index
    @movie_hours = MovieHour.all
  end

  # GET /movie_hours/1
  # GET /movie_hours/1.json
  def show
  end

  # GET /movie_hours/new
  def new
    @movie_hour = MovieHour.new
  end

  # GET /movie_hours/1/edit
  def edit
  end

  # POST /movie_hours
  # POST /movie_hours.json
  def create
    @movie_hour = MovieHour.new(movie_hour_params)

    respond_to do |format|
      if @movie_hour.save
        format.html { redirect_to @movie_hour, notice: 'Movie hour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movie_hour }
      else
        format.html { render action: 'new' }
        format.json { render json: @movie_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_hours/1
  # PATCH/PUT /movie_hours/1.json
  def update
    respond_to do |format|
      if @movie_hour.update(movie_hour_params)
        format.html { redirect_to @movie_hour, notice: 'Movie hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movie_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_hours/1
  # DELETE /movie_hours/1.json
  def destroy
    @movie_hour.destroy
    respond_to do |format|
      format.html { redirect_to movie_hours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_hour
      @movie_hour = MovieHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_hour_params
      params.require(:movie_hour).permit(:hour, :room_id)
    end
end
