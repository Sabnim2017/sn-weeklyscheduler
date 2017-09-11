class User < ActiveRecord::Base
  has_secure_password

  has_many :events
  has_many :schedulers

  validates :name, presence: true
  validates :password, presence: true

end
