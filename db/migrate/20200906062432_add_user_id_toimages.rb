class AddUserIdToimages < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :item, null: false, foreign_key: true
  end
end
