require 'test_helper'

class CVideosControllerTest < ActionController::TestCase
  setup do
    @c_video = c_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_video" do
    assert_difference('CVideo.count') do
      post :create, c_video: { client_id: @c_video.client_id, content: @c_video.content, title: @c_video.title }
    end

    assert_redirected_to c_video_path(assigns(:c_video))
  end

  test "should show c_video" do
    get :show, id: @c_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_video
    assert_response :success
  end

  test "should update c_video" do
    put :update, id: @c_video, c_video: { client_id: @c_video.client_id, content: @c_video.content, title: @c_video.title }
    assert_redirected_to c_video_path(assigns(:c_video))
  end

  test "should destroy c_video" do
    assert_difference('CVideo.count', -1) do
      delete :destroy, id: @c_video
    end

    assert_redirected_to c_videos_path
  end
end
