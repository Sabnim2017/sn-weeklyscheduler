class Scheduler < ActiveRecord::Base
  has_one :color
  has_many :events

  validates :name, presence: true
  validates :color, presence: true
end
