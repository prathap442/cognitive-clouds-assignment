class Topic < ApplicationRecord
  has_many :questions  
  validates_uniqueness_of :name
  validates_presence_of :name
end
