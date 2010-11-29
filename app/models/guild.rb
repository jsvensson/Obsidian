class Guild < ActiveRecord::Base
  has_many :characters
  validates :name, :presence => true
end
