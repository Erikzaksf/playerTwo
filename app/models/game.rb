
class Game < ActiveRecord::Base
  validates :name, :presence => true
  validates :details, :presence => true
  validates :price, :presence => true
end
