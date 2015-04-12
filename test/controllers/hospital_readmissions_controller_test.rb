require 'test_helper'

class HospitalReadmissionsControllerTest < ActionController::TestCase
  setup do
    @hospital_readmission = hospital_readmissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_readmissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_readmission" do
    assert_difference('HospitalReadmission.count') do
      post :create, hospital_readmission: { address: @hospital_readmission.address, city: @hospital_readmission.city, compared_to_national: @hospital_readmission.compared_to_national, county_name: @hospital_readmission.county_name, denominator: @hospital_readmission.denominator, footnote: @hospital_readmission.footnote, higher_estimate: @hospital_readmission.higher_estimate, hospital_name: @hospital_readmission.hospital_name, lower_estimate: @hospital_readmission.lower_estimate, measure_end_date: @hospital_readmission.measure_end_date, measure_id: @hospital_readmission.measure_id, measure_name: @hospital_readmission.measure_name, measure_start_date: @hospital_readmission.measure_start_date, phone_number: @hospital_readmission.phone_number, provider_id: @hospital_readmission.provider_id, score: @hospital_readmission.score, state: @hospital_readmission.state, zip_code: @hospital_readmission.zip_code }
    end

    assert_redirected_to hospital_readmission_path(assigns(:hospital_readmission))
  end

  test "should show hospital_readmission" do
    get :show, id: @hospital_readmission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_readmission
    assert_response :success
  end

  test "should update hospital_readmission" do
    patch :update, id: @hospital_readmission, hospital_readmission: { address: @hospital_readmission.address, city: @hospital_readmission.city, compared_to_national: @hospital_readmission.compared_to_national, county_name: @hospital_readmission.county_name, denominator: @hospital_readmission.denominator, footnote: @hospital_readmission.footnote, higher_estimate: @hospital_readmission.higher_estimate, hospital_name: @hospital_readmission.hospital_name, lower_estimate: @hospital_readmission.lower_estimate, measure_end_date: @hospital_readmission.measure_end_date, measure_id: @hospital_readmission.measure_id, measure_name: @hospital_readmission.measure_name, measure_start_date: @hospital_readmission.measure_start_date, phone_number: @hospital_readmission.phone_number, provider_id: @hospital_readmission.provider_id, score: @hospital_readmission.score, state: @hospital_readmission.state, zip_code: @hospital_readmission.zip_code }
    assert_redirected_to hospital_readmission_path(assigns(:hospital_readmission))
  end

  test "should destroy hospital_readmission" do
    assert_difference('HospitalReadmission.count', -1) do
      delete :destroy, id: @hospital_readmission
    end

    assert_redirected_to hospital_readmissions_path
  end
end
