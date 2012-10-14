class InterestedUser < ActiveRecord::Base
  attr_accessible :email

  validates :email, presence: true, uniqueness: true
  validates :email, format: { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
