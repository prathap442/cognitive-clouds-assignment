require 'test_helper'

class FellowTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fellow_topic = fellow_topics(:one)
  end

  test "should get index" do
    get fellow_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_fellow_topic_url
    assert_response :success
  end

  test "should create fellow_topic" do
    assert_difference('FellowTopic.count') do
      post fellow_topics_url, params: { fellow_topic: { topic_id: @fellow_topic.topic_id, user_id: @fellow_topic.user_id } }
    end

    assert_redirected_to fellow_topic_url(FellowTopic.last)
  end

  test "should show fellow_topic" do
    get fellow_topic_url(@fellow_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_fellow_topic_url(@fellow_topic)
    assert_response :success
  end

  test "should update fellow_topic" do
    patch fellow_topic_url(@fellow_topic), params: { fellow_topic: { topic_id: @fellow_topic.topic_id, user_id: @fellow_topic.user_id } }
    assert_redirected_to fellow_topic_url(@fellow_topic)
  end

  test "should destroy fellow_topic" do
    assert_difference('FellowTopic.count', -1) do
      delete fellow_topic_url(@fellow_topic)
    end

    assert_redirected_to fellow_topics_url
  end
end
