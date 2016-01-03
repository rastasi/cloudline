class Site < ActiveRecord::Base
  belongs_to :user
  has_many :conditions
  has_many :logs
  validates :status, inclusion: { in: SITE_STATUSES }
  validates :protocol, inclusion: { in: SITE_PROTOCOLS }
  validates :http_method, inclusion: { in: SITE_HTTP_METHODS }
  after_initialize :default_values

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

  private

  def default_values
    self.status         ||= :virgin
    self.protocol       ||= :http
    self.active         ||= true
    self.http_method    ||= :get
    self.check_interval ||= 10
  end

end
