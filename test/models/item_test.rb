require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  belongs_to :user dependent: :destroy
  has_many :image dependent: :destroy
end
