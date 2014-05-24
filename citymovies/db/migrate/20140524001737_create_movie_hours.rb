class CreateMovieHours < ActiveRecord::Migration
  def change
    create_table :movie_hours do |t|
      t.datetime :hour
      t.integer :room_id

      t.timestamps
    end
  end
end
