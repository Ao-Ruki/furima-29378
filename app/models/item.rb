class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :category
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_player
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :preparation_day
  has_one_attached :image

 validates :image,:name, :description, :price, presence: true
 validates :price, numericality: { only_integer: true, message: 'Half-width number' }
 validates :price, numericality: { greater_than: 300, less_than: 9999999, message: 'Out of setting range' }
 validates :category_id, :item_condition_id, :postage_player_id, :prefecture_id, :preparation_day_id, numericality: { other_than: 1, message: 'Select'} 
 
end
