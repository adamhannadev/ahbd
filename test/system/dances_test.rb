require "application_system_test_case"

class DancesTest < ApplicationSystemTestCase
  setup do
    @dance = dances(:one)
  end

  test "visiting the index" do
    visit dances_url
    assert_selector "h1", text: "Dances"
  end

  test "creating a Dance" do
    visit dances_url
    click_on "New Dance"

    fill_in "Category", with: @dance.category_id
    fill_in "Description", with: @dance.description
    fill_in "Title", with: @dance.title
    click_on "Create Dance"

    assert_text "Dance was successfully created"
    click_on "Back"
  end

  test "updating a Dance" do
    visit dances_url
    click_on "Edit", match: :first

    fill_in "Category", with: @dance.category_id
    fill_in "Description", with: @dance.description
    fill_in "Title", with: @dance.title
    click_on "Update Dance"

    assert_text "Dance was successfully updated"
    click_on "Back"
  end

  test "destroying a Dance" do
    visit dances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dance was successfully destroyed"
  end
end
