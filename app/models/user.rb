class User < ApplicationRecord
  include UsersHelper
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  mount_uploader :avatar, AvatarUploader
  
  has_many :comments, dependent: :restrict_with_error
  has_many :restaurants, through: :comments

  has_many :favorites, dependent: :destroy
  has_many :favorited_restaurants, through: :favorites, source: :restaurant

  has_many :likes, dependent: :destroy
  has_many :liked_restaurants, through: :likes, source: :restaurant

  # Current_user followed someone
  has_many :followships, dependent: :destroy
  has_many :followings, through: :followships

  # Someone followed current_user
  has_many :inverse_followships, class_name: "Followship", foreign_key: "following_id"
  has_many :followers, through: :inverse_followships, source: :user

  # Current_user friended someone
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  # Someone friended current_user
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :ivfriends, through: :inverse_friendships, source: :user
end
