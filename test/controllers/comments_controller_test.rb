require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
    sign_in users(:one)
  end

  test "should create comment" do
    assert_difference("Comment.count") do
      post comments_url, params: { comment: { body: @comment.body, project_id: @comment.project_id, user_id: @comment.user_id } }
    end

    assert_redirected_to project_url(@comment.project_id)
  end
end
