class Site < ActiveRecord::Base
  belongs_to :User
  has_many :condition
  has_many :log
end
