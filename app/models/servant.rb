class Servant < ActiveRecord::Base
  STATUS_TYPE = {active: true, inactive: false}

  mount_uploader :avatar, AvatarUploader
  belongs_to :rank

  validates :nick, :rank, presence: true

  def self.ordered
    joins(:rank).order('rank.level ASC, servants.status DESC, servants.name ASC')
  end
end
