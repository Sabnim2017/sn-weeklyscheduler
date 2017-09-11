module EventsHelper
  def format_time time
  	time.strftime("%l:%M%P")
  end

  def events_colorName event
  	colorId = Scheduler.find_by(id: event.scheduler_id).color_id
  	colorName = Color.find_by(id: colorId).name
  end
end
