class AddUserIdTodestinations < ActiveRecord::Migration[6.0]
  def change
    add_reference :destinations, :user, null: false, foreign_key: true
  end
end
