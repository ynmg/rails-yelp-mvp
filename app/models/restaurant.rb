class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy


  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  # validates :category, inclsusion: { in: %w(chinese italian japanese french belgian),
  #   message: "%{category} is not valid" }
end
