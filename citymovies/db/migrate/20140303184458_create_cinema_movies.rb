class CreateCinemaMovies < ActiveRecord::Migration
  def change
    create_table :cinema_movies do |t|
      t.integer :cinema_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
