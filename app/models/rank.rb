class Rank < ActiveRecord::Base
  has_many :servants
  validates :name, :level, presence: true, uniqueness: true
end
