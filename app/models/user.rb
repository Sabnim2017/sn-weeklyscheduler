class User < ActiveRecord::Base
  has_secure_password

  has_many :events
  has_many :schedulers, through: :events, source: :schedulers

  validates :name, presence: true

end
