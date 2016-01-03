module ApplicationHelper

  def formatted_status status
    "<span class='status #{status}'>#{"status.#{status}".t}</span>"
  end

  def yes_no bool
    bool ? 'yes'.t : 'no'.t
  end

  def redirect_403
    redirect_to error_403_path
  end

  def redirect_404
    redirect_to error_404_path
  end

  def redirect_500
    redirect_to error_500_path
  end

end
