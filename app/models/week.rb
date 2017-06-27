class Week < ActiveRecord::Base
  validates :name, :presence => true
  has_many :days
end
