require "test_helper"

class WorkoutDashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_dashboard = workout_dashboards(:one)
  end

  test "should get index" do
    get workout_dashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_dashboard_url
    assert_response :success
  end

  test "should create workout_dashboard" do
    assert_difference('WorkoutDashboard.count') do
      post workout_dashboards_url, params: { workout_dashboard: {  } }
    end

    assert_redirected_to workout_dashboard_url(WorkoutDashboard.last)
  end

  test "should show workout_dashboard" do
    get workout_dashboard_url(@workout_dashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_dashboard_url(@workout_dashboard)
    assert_response :success
  end

  test "should update workout_dashboard" do
    patch workout_dashboard_url(@workout_dashboard), params: { workout_dashboard: {  } }
    assert_redirected_to workout_dashboard_url(@workout_dashboard)
  end

  test "should destroy workout_dashboard" do
    assert_difference('WorkoutDashboard.count', -1) do
      delete workout_dashboard_url(@workout_dashboard)
    end

    assert_redirected_to workout_dashboards_url
  end
end
