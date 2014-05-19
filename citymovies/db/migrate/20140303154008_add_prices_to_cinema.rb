class AddPricesToCinema < ActiveRecord::Migration
  def up
    add_column :cinemas, :sunday, :decimal
    add_column :cinemas, :monday, :decimal
    add_column :cinemas, :tuesday, :decimal
    add_column :cinemas, :wednesday, :decimal
    add_column :cinemas, :thursday, :decimal
    add_column :cinemas, :friday, :decimal
    add_column :cinemas, :saturday, :decimal
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
