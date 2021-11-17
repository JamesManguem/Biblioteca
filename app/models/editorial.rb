# == Schema Information
#
# Table name: editorials
#
#  id         :integer          not null, primary key
#  country    :string
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Editorial < ApplicationRecord
  has_many :books
end
