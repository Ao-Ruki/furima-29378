class AddUserIdTodestinations < ActiveRecord::Migration[6.0]
  def change
    add_reference :destinations, :item_purchases, foreign_key: true
    add_reference :destinations, :user, foreign_key: true
  end
end
