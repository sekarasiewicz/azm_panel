class Servant < ActiveRecord::Base
  STATUS_TYPE = {active: true, inactive: false}

  mount_uploader :avatar, AvatarUploader
  belongs_to :rank

  validates :nick, presence: true
end
