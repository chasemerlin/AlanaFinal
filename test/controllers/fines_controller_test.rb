require 'test_helper'

class FinesControllerTest < ActionController::TestCase
  setup do
    @fine = fines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fine" do
    assert_difference('Fine.count') do
      post :create, fine: { ami_ratio: @fine.ami_ratio, ami_total: @fine.ami_total, copd_ratio: @fine.copd_ratio, copd_total: @fine.copd_total, hf_ratio: @fine.hf_ratio, hf_total: @fine.hf_total, hip_knee_ratio: @fine.hip_knee_ratio, hip_knee_total: @fine.hip_knee_total, hospital_name: @fine.hospital_name, pneumonia_ratio: @fine.pneumonia_ratio, pneumonia_total: @fine.pneumonia_total, staffed_beds: @fine.staffed_beds, total_payments: @fine.total_payments }
    end

    assert_redirected_to fine_path(assigns(:fine))
  end

  test "should show fine" do
    get :show, id: @fine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fine
    assert_response :success
  end

  test "should update fine" do
    patch :update, id: @fine, fine: { ami_ratio: @fine.ami_ratio, ami_total: @fine.ami_total, copd_ratio: @fine.copd_ratio, copd_total: @fine.copd_total, hf_ratio: @fine.hf_ratio, hf_total: @fine.hf_total, hip_knee_ratio: @fine.hip_knee_ratio, hip_knee_total: @fine.hip_knee_total, hospital_name: @fine.hospital_name, pneumonia_ratio: @fine.pneumonia_ratio, pneumonia_total: @fine.pneumonia_total, staffed_beds: @fine.staffed_beds, total_payments: @fine.total_payments }
    assert_redirected_to fine_path(assigns(:fine))
  end

  test "should destroy fine" do
    assert_difference('Fine.count', -1) do
      delete :destroy, id: @fine
    end

    assert_redirected_to fines_path
  end
end
