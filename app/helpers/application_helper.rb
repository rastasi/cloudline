module ApplicationHelper

  def formatted_status status
    "<span class='status #{status}'>#{"status.#{status}".t}</span>"
  end

  def yes_no bool
    bool ? 'yes'.t : 'no'.t
  end
  
end
