require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  extend ActiveHash::Associations::ActiveRecordExtensions
  # test "the truth" do
  #   assert true
  # end
  belongs_to :user dependent: :destroy
  has_one :transaction dependent: :destroy
  belongs_to_active_hash :category
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_player
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :preparation_day
end
