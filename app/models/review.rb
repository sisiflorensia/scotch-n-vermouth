class Review < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user

  validates :your_name, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true
end
