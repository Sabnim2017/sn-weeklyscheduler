class Event < ActiveRecord::Base
  belongs_to :user
  has_one :scheduler

  validates :start, presence: true
  validates :end, presence: true
  validates :title, presence: true
end
