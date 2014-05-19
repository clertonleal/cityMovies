class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.references :address, index: true
      t.datetime :openTime
      t.datetime :closeTime

      t.timestamps
    end
  end
end
