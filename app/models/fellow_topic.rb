class FellowTopic < ApplicationRecord
  validate :check_duplicity_of_follow_chain?, on: [:create,:update]
  def check_duplicity_of_follow_chain?
    if (FellowTopic.where(user_id: self.user_id, topic_id: self.topic_id).count.positive?)
      self.errors.add(:topic_id, "Your already following this particular Topic")
    end
  end    
end
