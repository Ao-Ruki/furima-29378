class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
  t.integer :postcode, null: false
  t.integer    :prefecture, null: false
  t.string    :city, null: false
  t.string :address, null: false
  t.string :building_name, null: false
  t.integer :phone_number, unique: true
      t.timestamps
    end
  end
end
