require "application_system_test_case"

class RoutinesTest < ApplicationSystemTestCase
  setup do
    @routine = routines(:one)
  end

  test "visiting the index" do
    visit routines_url
    assert_selector "h1", text: "Routines"
  end

  test "creating a Routine" do
    visit routines_url
    click_on "New Routine"

    fill_in "Category", with: @routine.category
    fill_in "Dance", with: @routine.dance
    fill_in "Description", with: @routine.description
    fill_in "Level", with: @routine.level
    fill_in "Song", with: @routine.song
    fill_in "Student", with: @routine.student_id
    click_on "Create Routine"

    assert_text "Routine was successfully created"
    click_on "Back"
  end

  test "updating a Routine" do
    visit routines_url
    click_on "Edit", match: :first

    fill_in "Category", with: @routine.category
    fill_in "Dance", with: @routine.dance
    fill_in "Description", with: @routine.description
    fill_in "Level", with: @routine.level
    fill_in "Song", with: @routine.song
    fill_in "Student", with: @routine.student_id
    click_on "Update Routine"

    assert_text "Routine was successfully updated"
    click_on "Back"
  end

  test "destroying a Routine" do
    visit routines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Routine was successfully destroyed"
  end
end
