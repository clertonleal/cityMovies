class ChangeMovieColumnsName < ActiveRecord::Migration
  def change
    rename_column :movies, :age, :minimumAge
    rename_column :movies, :duration_in_minutes, :durationInMinutes
  end
end
