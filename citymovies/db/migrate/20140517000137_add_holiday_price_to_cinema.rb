class AddHolidayPriceToCinema < ActiveRecord::Migration
  def up
    add_column :cinemas, :holiday_price, :decimal
  end

  def down
    remove_column :cinemas, :holiday_price
  end
end
