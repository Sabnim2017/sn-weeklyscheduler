class Scheduler < ActiveRecord::Base
  has_one :color
  has_many :events

  validates :name, presence: true

end
