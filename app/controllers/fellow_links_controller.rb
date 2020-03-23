class FellowLinksController < ApplicationController
  def follow_user
    binding.pry
    fellow_source_id = params[:followed_source_id]
    follower_id = params[:follower_id]
    f1 = Fellow.new(
      followed_source_id: fellow_source_id.to_i,
      follower_id: follower_id.to_i
    )
    response_obtained = f1.save
    render json: {fellow: f1.attributes, success: response_obtained, errors: f1.errors.full_messages}.to_json
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
