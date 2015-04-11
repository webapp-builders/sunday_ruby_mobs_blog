require "test_helper"

class PostsControllerTest < ActionController::TestCase

  def test_posts_index
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  def test_get_show_successful
    get :show, id: posts(:one).id
    assert_response :success
    assert_equal assigns(:post), posts(:one)
  end
end
