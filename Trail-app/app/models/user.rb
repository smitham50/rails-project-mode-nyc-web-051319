class User < ApplicationRecord
  has_secure_password
  has_many :user_trails
  has_many :trails, through: :user_trails
  has_many :reviews

# validates :username, presence: true
# validates :username, uniquness: true
# validates :password, presence: true
# validates :password, confirmation: { case_sensitive: true }

  def user_address
    "#{self.address}, #{self.city}, #{self.state} #{self.zip_code}"
  end

  def trail_reviews(trail)
    trail.reviews.select do |r|
      r.user_id == self.id
    end
  end
end
