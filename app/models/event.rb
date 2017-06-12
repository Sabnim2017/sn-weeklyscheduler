class Event < ActiveRecord::Base
  has_one :scheduler
end
