class Condition < ActiveRecord::Base
  belongs_to :site
  validates :ctype, inclusion: { in: CONDITION_TYPES }
end
