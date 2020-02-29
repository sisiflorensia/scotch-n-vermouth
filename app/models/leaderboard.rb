class Leaderboard < ApplicationRecord
  belongs_to :game

  validates :your_name, presence: true
  validates :score, presence: true
end
