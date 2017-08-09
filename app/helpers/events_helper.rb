module EventsHelper
  def format_time time
  	time.to_formatted_s(:time)
  end
end
