class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :days
  has_many :user_preferences
  has_many :preferences, through: :user_preferences
  validates :sex, presence: true
  validates :weight, presence: true
end
