require 'test_helper'

class PalestrasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palestras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palestra" do
    assert_difference('Palestra.count') do
      post :create, :palestra => { }
    end

    assert_redirected_to palestra_path(assigns(:palestra))
  end

  test "should show palestra" do
    get :show, :id => palestras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => palestras(:one).to_param
    assert_response :success
  end

  test "should update palestra" do
    put :update, :id => palestras(:one).to_param, :palestra => { }
    assert_redirected_to palestra_path(assigns(:palestra))
  end

  test "should destroy palestra" do
    assert_difference('Palestra.count', -1) do
      delete :destroy, :id => palestras(:one).to_param
    end

    assert_redirected_to palestras_path
  end
end
