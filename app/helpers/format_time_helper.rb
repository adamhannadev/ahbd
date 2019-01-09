module FormatTimeHelper
  def format_time(time, format=:long, blank_message="&nbsp;")
    time.blank? ? blank_message : time.strftime("%a, %d %b %Y (%l:%M%P)")
  end
end
