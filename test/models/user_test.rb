# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  address     :string
#  age         :integer
#  name        :string
#  observation :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
