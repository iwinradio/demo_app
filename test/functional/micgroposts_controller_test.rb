require 'test_helper'

class MicgropostsControllerTest < ActionController::TestCase
  setup do
    @micgropost = micgroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micgroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micgropost" do
    assert_difference('Micgropost.count') do
      post :create, :micgropost => @micgropost.attributes
    end

    assert_redirected_to micgropost_path(assigns(:micgropost))
  end

  test "should show micgropost" do
    get :show, :id => @micgropost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @micgropost.to_param
    assert_response :success
  end

  test "should update micgropost" do
    put :update, :id => @micgropost.to_param, :micgropost => @micgropost.attributes
    assert_redirected_to micgropost_path(assigns(:micgropost))
  end

  test "should destroy micgropost" do
    assert_difference('Micgropost.count', -1) do
      delete :destroy, :id => @micgropost.to_param
    end

    assert_redirected_to micgroposts_path
  end
end
