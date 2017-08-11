class Scheduler < ActiveRecord::Base
  has_one :color
  belongs_to :events


  validates :name, presence: true
  validates :color, presence: true
end
