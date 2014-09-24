class Servant < ActiveRecord::Base
  STATUS_TYPE = {active: true, inactive: false}
  belongs_to :rank

  validates :nick, presence: true
end
