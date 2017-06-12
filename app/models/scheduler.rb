class Scheduler < ActiveRecord::Base
  has_one :color
  has_many :events
end
