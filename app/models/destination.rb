class Destination < ApplicationRecord
  belongs_to :item_purchases
  belongs_to :user
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
