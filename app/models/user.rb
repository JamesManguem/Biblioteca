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
class User < ApplicationRecord
  has_many :borrowings
  has_many :books, through: :borrowings
end
