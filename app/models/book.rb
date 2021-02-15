class Book < ApplicationRecord
  belongs_to :user

  validates :title, :author, :category, presence: true
end
