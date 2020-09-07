require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  has_many :item dependent: :destroy
  belongs_to :destination dependent: :destroy
  belongs_to :card dependent: :destroy
end
