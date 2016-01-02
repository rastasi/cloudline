class Log < ActiveRecord::Base
  belongs_to :site

  def decoded_details
    JSON.parse(details)
  end

end
