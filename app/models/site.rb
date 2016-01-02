class Site < ActiveRecord::Base
  belongs_to :user
  has_many :conditions
  has_many :logs

  def full_url
    "#{(protocol ? protocol : 'http')}://#{url}"
  end

  def check_interval_formatted
    if check_interval < 60
      if check_interval == 1
        "#{check_interval} minute"
      else
        "#{check_interval} minutes"
      end
    else
      if check_interval == 60
        "#{(check_interval/60)} hour"
      else
        "#{(check_interval/60)} hours"
      end
    end
  end

end
