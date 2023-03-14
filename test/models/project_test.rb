require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "Updating project status creates a comment" do
    assert_difference("Comment.count") do
      projects(:one).update(status: :complete, user: users(:one))
    end
  end
end
