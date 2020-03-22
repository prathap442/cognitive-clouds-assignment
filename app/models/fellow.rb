class Fellow < ApplicationRecord
  validates_numericality_of :followed_source_id
  validates_numericality_of :follower_id # to whome the main source is following
  belongs_to :user, class_name: "User",foreign_key: :user_id
end
