class Fellow < ApplicationRecord
  validates_numericality_of :followed_source_id
  validates_numericality_of :follower_id # to whome the main source is following
  validate :check_duplicity_of_follow_chain?, on: [:create,:update]

  def check_duplicity_of_follow_chain?
    if (Fellow.where(follower_id: self.follower_id, followed_source_id: followed_source_id).count.positive?)
      self.errors.add(:follower_id, "Your already following this particular person")
    end
  end
end
