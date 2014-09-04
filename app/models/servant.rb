class Servant < ActiveRecord::Base
  validates :nick, presence: true
end
