class UserPreference < ApplicationRecord
  belongs_to :user
  belongs_to :preference
  validates :preference, uniqueness: { scope: :user }
end
