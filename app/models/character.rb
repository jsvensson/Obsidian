class Character < ActiveRecord::Base
  belongs_to :player
  validates :name,  :presence => true
  validates :class, :presence => true
end
