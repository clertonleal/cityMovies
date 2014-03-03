class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.references :address, index: true
      t.date :openTime
      t.date :closeTime

      t.timestamps
    end
  end
end
