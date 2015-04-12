require 'test_helper'

class HospitalGeneralsControllerTest < ActionController::TestCase
  setup do
    @hospital_general = hospital_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_general" do
    assert_difference('HospitalGeneral.count') do
      post :create, hospital_general: { address: @hospital_general.address, city: @hospital_general.city, county: @hospital_general.county, emergency: @hospital_general.emergency, name: @hospital_general.name, ownership: @hospital_general.ownership, phone: @hospital_general.phone, provider_id: @hospital_general.provider_id, state: @hospital_general.state, type: @hospital_general.type, zip: @hospital_general.zip }
    end

    assert_redirected_to hospital_general_path(assigns(:hospital_general))
  end

  test "should show hospital_general" do
    get :show, id: @hospital_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_general
    assert_response :success
  end

  test "should update hospital_general" do
    patch :update, id: @hospital_general, hospital_general: { address: @hospital_general.address, city: @hospital_general.city, county: @hospital_general.county, emergency: @hospital_general.emergency, name: @hospital_general.name, ownership: @hospital_general.ownership, phone: @hospital_general.phone, provider_id: @hospital_general.provider_id, state: @hospital_general.state, type: @hospital_general.type, zip: @hospital_general.zip }
    assert_redirected_to hospital_general_path(assigns(:hospital_general))
  end

  test "should destroy hospital_general" do
    assert_difference('HospitalGeneral.count', -1) do
      delete :destroy, id: @hospital_general
    end

    assert_redirected_to hospital_generals_path
  end
end
