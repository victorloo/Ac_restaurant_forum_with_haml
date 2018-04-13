class Restaurant < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :name, presence: :true

  belongs_to :category, optional: true
  has_many :comments
end
