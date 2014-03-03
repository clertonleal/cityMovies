class AddPricesToCinema < ActiveRecord::Migration
  def up
    add_column :cinemas, :sunday, :float
    add_column :cinemas, :monday, :float
    add_column :cinemas, :tuesday, :float
    add_column :cinemas, :wednesday, :float
    add_column :cinemas, :thursday, :float
    add_column :cinemas, :friday, :float
    add_column :cinemas, :saturday, :float
  end

  def down
    remove_column :cinemas, :sunday
    remove_column :cinemas, :monday
    remove_column :cinemas, :tuesday
    remove_column :cinemas, :wednesday
    remove_column :cinemas, :thursday
    remove_column :cinemas, :friday
    remove_column :cinemas, :saturday
  end
end
