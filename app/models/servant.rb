class Servant < ActiveRecord::Base
  STATUS_TYPE = {active: true, inactive: false}
  validates :nick, presence: true
end
