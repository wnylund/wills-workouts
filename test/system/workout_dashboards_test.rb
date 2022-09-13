require "application_system_test_case"

class WorkoutDashboardsTest < ApplicationSystemTestCase
  setup do
    @workout_dashboard = workout_dashboards(:one)
  end

  test "visiting the index" do
    visit workout_dashboards_url
    assert_selector "h1", text: "Workout Dashboards"
  end

  test "creating a Workout dashboard" do
    visit workout_dashboards_url
    click_on "New Workout Dashboard"

    click_on "Create Workout dashboard"

    assert_text "Workout dashboard was successfully created"
    click_on "Back"
  end

  test "updating a Workout dashboard" do
    visit workout_dashboards_url
    click_on "Edit", match: :first

    click_on "Update Workout dashboard"

    assert_text "Workout dashboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout dashboard" do
    visit workout_dashboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout dashboard was successfully destroyed"
  end
end
