class Restaurant < ApplicationRecord
  include RestaurantsHelper
  mount_uploader :image, PhotoUploader
  validates :name, presence: true

  belongs_to :category
  has_many :comments, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user
end
