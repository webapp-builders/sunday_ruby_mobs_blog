require "test_helper"

class PostsControllerTest < ActionController::TestCase


  def test_posts_index
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
    
    assert_routing posts_path, controller: 'posts', action: 'index'  
  end
end
