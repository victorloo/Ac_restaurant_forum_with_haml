class Restaurant < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :name, presence: true

  belongs_to :category
  has_many :comments, dependent: :destroy
end
