class Log < ActiveRecord::Base
  belongs_to :site
  validates :status, inclusion: { in: SITE_STATUSES }

  def decoded_details
    JSON.parse(details)
  end

end
