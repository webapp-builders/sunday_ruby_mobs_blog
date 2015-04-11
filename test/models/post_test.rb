require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "Add Post" do
    post = Post.new(title: "Hello World", body: "Hello KangKyu, This is the world.")
    assert_equal "Hello World", post.title
    assert_equal "Hello KangKyu, This is the world.", post.body

    assert_difference 'Post.count', 1 do
      assert post.save
    end
  end

  test "belongs to a user" do
    post = posts(:one)
    user = post.user
    assert_includes user.posts, post
  end

  test "has many comments" do
    post = posts(:one)
    post.comments.each do |comment|
      assert_equal comment.post, post
    end
  end

end
