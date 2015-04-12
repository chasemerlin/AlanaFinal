require 'test_helper'

class HospitalBedsizesControllerTest < ActionController::TestCase
  setup do
    @hospital_bedsize = hospital_bedsizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_bedsizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_bedsize" do
    assert_difference('HospitalBedsize.count') do
      post :create, hospital_bedsize: { city: @hospital_bedsize.city, gross_patient_revenue: @hospital_bedsize.gross_patient_revenue, hospital_name: @hospital_bedsize.hospital_name, patient_days: @hospital_bedsize.patient_days, staffed_beds: @hospital_bedsize.staffed_beds, state: @hospital_bedsize.state, total_discharges: @hospital_bedsize.total_discharges }
    end

    assert_redirected_to hospital_bedsize_path(assigns(:hospital_bedsize))
  end

  test "should show hospital_bedsize" do
    get :show, id: @hospital_bedsize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_bedsize
    assert_response :success
  end

  test "should update hospital_bedsize" do
    patch :update, id: @hospital_bedsize, hospital_bedsize: { city: @hospital_bedsize.city, gross_patient_revenue: @hospital_bedsize.gross_patient_revenue, hospital_name: @hospital_bedsize.hospital_name, patient_days: @hospital_bedsize.patient_days, staffed_beds: @hospital_bedsize.staffed_beds, state: @hospital_bedsize.state, total_discharges: @hospital_bedsize.total_discharges }
    assert_redirected_to hospital_bedsize_path(assigns(:hospital_bedsize))
  end

  test "should destroy hospital_bedsize" do
    assert_difference('HospitalBedsize.count', -1) do
      delete :destroy, id: @hospital_bedsize
    end

    assert_redirected_to hospital_bedsizes_path
  end
end
