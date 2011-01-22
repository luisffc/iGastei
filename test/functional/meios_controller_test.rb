require 'test_helper'

class MeiosControllerTest < ActionController::TestCase
  setup do
    @meio = meios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meio" do
    assert_difference('Meio.count') do
      post :create, :meio => @meio.attributes
    end

    assert_redirected_to meio_path(assigns(:meio))
  end

  test "should show meio" do
    get :show, :id => @meio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @meio.to_param
    assert_response :success
  end

  test "should update meio" do
    put :update, :id => @meio.to_param, :meio => @meio.attributes
    assert_redirected_to meio_path(assigns(:meio))
  end

  test "should destroy meio" do
    assert_difference('Meio.count', -1) do
      delete :destroy, :id => @meio.to_param
    end

    assert_redirected_to meios_path
  end
end
