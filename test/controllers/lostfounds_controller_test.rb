require 'test_helper'

class LostfoundsControllerTest < ActionController::TestCase
  setup do
    @lostfound = lostfounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lostfounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lostfound" do
    assert_difference('Lostfound.count') do
      post :create, lostfound: { name: @lostfound.name }
    end

    assert_redirected_to lostfound_path(assigns(:lostfound))
  end

  test "should show lostfound" do
    get :show, id: @lostfound
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lostfound
    assert_response :success
  end

  test "should update lostfound" do
    patch :update, id: @lostfound, lostfound: { name: @lostfound.name }
    assert_redirected_to lostfound_path(assigns(:lostfound))
  end

  test "should destroy lostfound" do
    assert_difference('Lostfound.count', -1) do
      delete :destroy, id: @lostfound
    end

    assert_redirected_to lostfounds_path
  end
end
