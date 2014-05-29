class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.integer :movie_id
      t.string :name

      t.timestamps
    end
  end
end
