class Color < ActiveRecord::Base
	belongs_to :scheduler

	validates :name, presence: true
	validates :code, presence: true
end
