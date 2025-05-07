class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5, message: "must be between 0 and 5" }
  # validate :rating_range

  # private

  # def rating_range
  #   errors.add(:base, "Rating has to be 0 - 5") if rating < 0 or rating > 5
  # end
end


# DONE A review must belong to a restaurant.
# DONE A review must have a content.
# DONE A review must have a rating.
# DONE A review’s rating must be a number between 0 and 5.
# DONE A review’s rating must be an integer.
# For example, a review with a rating of 2.5 should be invalid!
