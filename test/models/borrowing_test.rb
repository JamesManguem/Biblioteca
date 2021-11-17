# == Schema Information
#
# Table name: borrowings
#
#  id            :integer          not null, primary key
#  fecha_entrada :date
#  fecha_salida  :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  book_id       :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_borrowings_on_book_id  (book_id)
#  index_borrowings_on_user_id  (user_id)
#
# Foreign Keys
#
#  book_id  (book_id => books.id)
#  user_id  (user_id => users.id)
#
require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
