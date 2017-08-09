class Event < ActiveRecord::Base
  has_one :scheduler

  validates :start, presence: true
  validates :end, presence: true
  validates :title, presence: true
end
