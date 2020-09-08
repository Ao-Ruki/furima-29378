require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  has_many :items dependent: :destroy
  has_many :transactions dependent: :destroy
end
