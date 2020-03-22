class FellowLinksController < ApplicationController
  def follow_user
    followed_source_id = params[:source_user_id]
    follower_id = params[:user_id]
    Fellow.create(
      fellow_sourced_id: fellow_source_id,
      follwer_id: follower_id
    )
  end

  def follow_topic
    user_id = params[:user_id]
    topic_id = params[:topic_id]
    FellowTopic.create(
      user_id: user_id,
      topic_id: topic_id
    )
  end
end
