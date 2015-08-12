require 'test_helper'

class CBlogsControllerTest < ActionController::TestCase
  setup do
    @c_blog = c_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_blog" do
    assert_difference('CBlog.count') do
      post :create, c_blog: { client_id: @c_blog.client_id, content: @c_blog.content, title: @c_blog.title }
    end

    assert_redirected_to c_blog_path(assigns(:c_blog))
  end

  test "should show c_blog" do
    get :show, id: @c_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_blog
    assert_response :success
  end

  test "should update c_blog" do
    put :update, id: @c_blog, c_blog: { client_id: @c_blog.client_id, content: @c_blog.content, title: @c_blog.title }
    assert_redirected_to c_blog_path(assigns(:c_blog))
  end

  test "should destroy c_blog" do
    assert_difference('CBlog.count', -1) do
      delete :destroy, id: @c_blog
    end

    assert_redirected_to c_blogs_path
  end
end
