# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  description  :string
#  language     :string
#  pages        :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :integer          not null
#  category_id  :integer          not null
#  editorial_id :integer          not null
#
# Indexes
#
#  index_books_on_author_id     (author_id)
#  index_books_on_category_id   (category_id)
#  index_books_on_editorial_id  (editorial_id)
#
# Foreign Keys
#
#  author_id     (author_id => authors.id)
#  category_id   (category_id => categories.id)
#  editorial_id  (editorial_id => editorials.id)
#
class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :editorial
  has_many :borrowings
  has_many :users, through: :borrowings
end
