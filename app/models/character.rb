class Character < ActiveRecord::Base
  belongs_to :player
  belongs_to :guild
  validates :name,  :presence => true
  validates :class, :presence => true
end
