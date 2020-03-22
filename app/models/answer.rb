class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validate :double_answering_by_same_user, on: [:create,:update]
  def double_answering_by_same_user
    binding.pry
    if self.question.answers.pluck(:user_id).include?(self.user_id)
      self.errors.add(:name, "You cannot answer the same question twice")
    end
  end

  def answered_by
    self.user.email
  end
end
