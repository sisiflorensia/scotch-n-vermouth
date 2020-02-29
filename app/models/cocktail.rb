class Cocktail < ApplicationRecord
  belongs_to :user
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  # mount_uploader :photo, PhotoUploader
  has_one_attached :photo
end
