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

  test "posts new" do
    get :new
    assert_response :success
  end

  test "posts create" do
    assert_difference 'Post.count', 1 do
      post :create, "post"=>{"title"=>"Hello Sam","body"=>"Nice to see you!"}
    end
    assert_response :redirect
  end
end
