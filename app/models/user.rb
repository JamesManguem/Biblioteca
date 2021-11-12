# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  address     :string
#  name        :string
#  observation :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
end
