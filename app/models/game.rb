class Game < ApplicationRecord
  has_many :leaderboards
  validates :title, presence: true
end
