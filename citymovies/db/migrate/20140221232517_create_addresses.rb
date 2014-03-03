class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :city
      t.string :country
      t.string :state
      t.string :cep

      t.timestamps
    end
  end
end
