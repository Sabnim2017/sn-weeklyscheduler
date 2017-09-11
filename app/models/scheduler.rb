class Scheduler < ActiveRecord::Base
  belongs_to :user
  has_one :color
  has_many :events

  validates :name, presence: true
  validates :color_id, presence: true

end
