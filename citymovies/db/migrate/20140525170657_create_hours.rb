class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.time :hour
      t.integer :room_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
