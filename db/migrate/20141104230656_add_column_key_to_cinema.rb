class AddColumnKeyToCinema < ActiveRecord::Migration
  def change
    add_column :cinemas, :key, :string
  end
end
