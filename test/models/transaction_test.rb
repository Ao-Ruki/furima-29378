require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  belongs_to :user dependent: :destroy
  belongs_to :item dependent: :destroy
  belongs_to :destination dependent: :destroy
end
