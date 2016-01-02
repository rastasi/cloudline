class Site < ActiveRecord::Base
  belongs_to :User
  has_many :condition
  has_many :logs

  def full_url
    "#{(protocol ? protocol : 'http')}://#{url}"
  end

end
