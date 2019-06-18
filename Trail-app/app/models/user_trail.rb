class UserTrail < ApplicationRecord
  belongs_to :user
  belongs_to :trail
  validates :trail_id, uniqueness: true
end
