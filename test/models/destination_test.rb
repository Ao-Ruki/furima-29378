require 'test_helper'

class DestinationTest < ActiveSupport::TestCase
  extend ActiveHash::Associations::ActiveRecordExtensions
  # test "the truth" do
  #   assert true
  # end
  belongs_to :transaction dependent: :destroy
  belongs_to_active_hash :prefecture
end
