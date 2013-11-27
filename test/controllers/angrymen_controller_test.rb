require 'test_helper'

class AngrymenControllerTest < ActionController::TestCase
  setup do
    @angryman = angrymen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:angrymen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create angryman" do
    assert_difference('Angryman.count') do
      post :create, angryman: { nick: @angryman.nick }
    end

    assert_redirected_to angryman_path(assigns(:angryman))
  end

  test "should show angryman" do
    get :show, id: @angryman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @angryman
    assert_response :success
  end

  test "should update angryman" do
    patch :update, id: @angryman, angryman: { nick: @angryman.nick }
    assert_redirected_to angryman_path(assigns(:angryman))
  end

  test "should destroy angryman" do
    assert_difference('Angryman.count', -1) do
      delete :destroy, id: @angryman
    end

    assert_redirected_to angrymen_path
  end
end
