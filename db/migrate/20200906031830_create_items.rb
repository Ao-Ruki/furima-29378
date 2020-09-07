class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
  t.string   :name, null: false
  t.text     :description, null: false
  t.integer  :price, null: false
  t.references :category, null: false
   t.references :item_condition, null: false
   t.references :postage_player, null: false
   t.integer    :prefecture, null: false
   t.references :preparation_day, null: false
      t.timestamps
    end
  end
end
