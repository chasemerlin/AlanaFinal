require 'test_helper'

class StateCopdsControllerTest < ActionController::TestCase
  setup do
    @state_copd = state_copds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_copds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_copd" do
    assert_difference('StateCopd.count') do
      post :create, state_copd: { abbreviation: @state_copd.abbreviation, has_copd: @state_copd.has_copd, ninety_five_percent_confidence_interval: @state_copd.ninety_five_percent_confidence_interval, percentage: @state_copd.percentage, respondents: @state_copd.respondents, state: @state_copd.state }
    end

    assert_redirected_to state_copd_path(assigns(:state_copd))
  end

  test "should show state_copd" do
    get :show, id: @state_copd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_copd
    assert_response :success
  end

  test "should update state_copd" do
    patch :update, id: @state_copd, state_copd: { abbreviation: @state_copd.abbreviation, has_copd: @state_copd.has_copd, ninety_five_percent_confidence_interval: @state_copd.ninety_five_percent_confidence_interval, percentage: @state_copd.percentage, respondents: @state_copd.respondents, state: @state_copd.state }
    assert_redirected_to state_copd_path(assigns(:state_copd))
  end

  test "should destroy state_copd" do
    assert_difference('StateCopd.count', -1) do
      delete :destroy, id: @state_copd
    end

    assert_redirected_to state_copds_path
  end
end
