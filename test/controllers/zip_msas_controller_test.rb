require 'test_helper'

class ZipMsasControllerTest < ActionController::TestCase
  setup do
    @zip_msa = zip_msas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zip_msas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zip_msa" do
    assert_difference('ZipMsa.count') do
      post :create, zip_msa: { county_number: @zip_msa.county_number, gpci_one: @zip_msa.gpci_one, gpci_three: @zip_msa.gpci_three, gpci_two: @zip_msa.gpci_two, msa_name: @zip_msa.msa_name, msa_number: @zip_msa.msa_number, msa_population: @zip_msa.msa_population, state_abbreviation: @zip_msa.state_abbreviation, zip_code: @zip_msa.zip_code, zip_population: @zip_msa.zip_population }
    end

    assert_redirected_to zip_msa_path(assigns(:zip_msa))
  end

  test "should show zip_msa" do
    get :show, id: @zip_msa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zip_msa
    assert_response :success
  end

  test "should update zip_msa" do
    patch :update, id: @zip_msa, zip_msa: { county_number: @zip_msa.county_number, gpci_one: @zip_msa.gpci_one, gpci_three: @zip_msa.gpci_three, gpci_two: @zip_msa.gpci_two, msa_name: @zip_msa.msa_name, msa_number: @zip_msa.msa_number, msa_population: @zip_msa.msa_population, state_abbreviation: @zip_msa.state_abbreviation, zip_code: @zip_msa.zip_code, zip_population: @zip_msa.zip_population }
    assert_redirected_to zip_msa_path(assigns(:zip_msa))
  end

  test "should destroy zip_msa" do
    assert_difference('ZipMsa.count', -1) do
      delete :destroy, id: @zip_msa
    end

    assert_redirected_to zip_msas_path
  end
end
