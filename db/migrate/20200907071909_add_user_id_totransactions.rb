class AddUserIdTotransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :item_purchases, :user, foreign_key: true
    add_reference :item_purchases, :item, foreign_key: true
  end
end
