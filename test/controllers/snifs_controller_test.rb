require 'test_helper'

class SnifsControllerTest < ActionController::TestCase
  setup do
    @snif = snifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snif" do
    assert_difference('Snif.count') do
      post :create, snif: { address: @snif.address, beds_capacity: @snif.beds_capacity, beds_unavailable: @snif.beds_unavailable, city: @snif.city, corporation: @snif.corporation, in_hospital: @snif.in_hospital, mcr_rating: @snif.mcr_rating, medicaid: @snif.medicaid, medicare: @snif.medicare, name: @snif.name, percentage_occupied: @snif.percentage_occupied, phone_number: @snif.phone_number, population: @snif.population, state: @snif.state, zipcode: @snif.zipcode }
    end

    assert_redirected_to snif_path(assigns(:snif))
  end

  test "should show snif" do
    get :show, id: @snif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snif
    assert_response :success
  end

  test "should update snif" do
    patch :update, id: @snif, snif: { address: @snif.address, beds_capacity: @snif.beds_capacity, beds_unavailable: @snif.beds_unavailable, city: @snif.city, corporation: @snif.corporation, in_hospital: @snif.in_hospital, mcr_rating: @snif.mcr_rating, medicaid: @snif.medicaid, medicare: @snif.medicare, name: @snif.name, percentage_occupied: @snif.percentage_occupied, phone_number: @snif.phone_number, population: @snif.population, state: @snif.state, zipcode: @snif.zipcode }
    assert_redirected_to snif_path(assigns(:snif))
  end

  test "should destroy snif" do
    assert_difference('Snif.count', -1) do
      delete :destroy, id: @snif
    end

    assert_redirected_to snifs_path
  end
end
