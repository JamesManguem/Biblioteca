# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  language    :string
#  name        :string
#  nationality :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Author < ApplicationRecord
end
