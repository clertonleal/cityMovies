class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.integer :age
      t.string :cover
      t.integer :duration_in_minutes
      t.string :director
      t.string :gender

      t.timestamps
    end
  end
end
