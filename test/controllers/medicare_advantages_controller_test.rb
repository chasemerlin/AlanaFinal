require 'test_helper'

class MedicareAdvantagesControllerTest < ActionController::TestCase
  setup do
    @medicare_advantage = medicare_advantages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicare_advantages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicare_advantage" do
    assert_difference('MedicareAdvantage.count') do
      post :create, medicare_advantage: { enrolled: @medicare_advantage.enrolled, market_share_in_state: @medicare_advantage.market_share_in_state, organization_name: @medicare_advantage.organization_name, state: @medicare_advantage.state, state_abbreviation: @medicare_advantage.state_abbreviation, total_state_ma_enrollment: @medicare_advantage.total_state_ma_enrollment }
    end

    assert_redirected_to medicare_advantage_path(assigns(:medicare_advantage))
  end

  test "should show medicare_advantage" do
    get :show, id: @medicare_advantage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicare_advantage
    assert_response :success
  end

  test "should update medicare_advantage" do
    patch :update, id: @medicare_advantage, medicare_advantage: { enrolled: @medicare_advantage.enrolled, market_share_in_state: @medicare_advantage.market_share_in_state, organization_name: @medicare_advantage.organization_name, state: @medicare_advantage.state, state_abbreviation: @medicare_advantage.state_abbreviation, total_state_ma_enrollment: @medicare_advantage.total_state_ma_enrollment }
    assert_redirected_to medicare_advantage_path(assigns(:medicare_advantage))
  end

  test "should destroy medicare_advantage" do
    assert_difference('MedicareAdvantage.count', -1) do
      delete :destroy, id: @medicare_advantage
    end

    assert_redirected_to medicare_advantages_path
  end
end
