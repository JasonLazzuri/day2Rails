class Day < ActiveRecord::Base
  validates :name, :presence=>true
  validates :body, :presence=>true
  validates :page, :presence=>true
  belongs_to :week
end
