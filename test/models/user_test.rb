require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  has_many :item dependent: :destroy
  has_one :transaction dependent: :destroy
end
