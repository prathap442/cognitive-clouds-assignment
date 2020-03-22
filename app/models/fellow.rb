class Fellow < ApplicationRecord
  validates_numericality_of :followed_source_id
  validates_numericality_of :follower_id # to whome the main source is following
end
