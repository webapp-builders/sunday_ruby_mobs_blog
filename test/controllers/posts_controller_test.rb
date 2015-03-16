require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "All Posts" do
    get :index
    assert_response :success
  end
end


# :success to indicate 200-299, 
# :redirect to indicate 300-399, 
# :missing to indicate 404, or 
# :error to match the 500-599 range