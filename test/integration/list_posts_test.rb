require 'test_helper'

class ListPostsTest < ActionDispatch::IntegrationTest
  
  test "root path to posts path" do
    get '/'
    assert_response :success
    # assert_routing '/', {controller: "posts", action: "index"}
    assert_template 'posts/index'
  end

  test "listing all the posts on index" do
    get posts_path
    assert_response :success
    assert_template 'posts/index'

    Post.all.each do |post|
      assert_select 'div', attributes: {id: "post-#{post.id}"}
    end
  end
end
