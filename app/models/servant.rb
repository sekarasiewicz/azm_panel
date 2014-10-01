class Servant < ActiveRecord::Base
  STATUS_TYPE = {active: true, inactive: false}

  mount_uploader :avatar, AvatarUploader
  belongs_to :rank

  validates :nick, :rank_id, presence: true

  def self.ordered
    joins(:rank).order('rank.level ASC, status DESC, name ASC')
  end
end
