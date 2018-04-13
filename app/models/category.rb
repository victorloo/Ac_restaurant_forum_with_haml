class Category < ApplicationRecord
  validates :name, presence: :true
  has_many :restaurants, dependent: :restrict_with_error
end
