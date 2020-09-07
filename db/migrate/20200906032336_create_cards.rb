class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
 t.integer :card_number, null:false, unique: true
 t.integer :expiration_year, null:false
 t.integer :expiration_month, null:false
 t.integer :security_code, null:false
      t.timestamps
    end
  end
end
