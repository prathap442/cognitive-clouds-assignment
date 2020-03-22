require "application_system_test_case"

class FellowsTest < ApplicationSystemTestCase
  setup do
    @fellow = fellows(:one)
  end

  test "visiting the index" do
    visit fellows_url
    assert_selector "h1", text: "Fellows"
  end

  test "creating a Fellow" do
    visit fellows_url
    click_on "New Fellow"

    fill_in "Followed source", with: @fellow.followed_source_id
    fill_in "Follower", with: @fellow.follower_id
    click_on "Create Fellow"

    assert_text "Fellow was successfully created"
    click_on "Back"
  end

  test "updating a Fellow" do
    visit fellows_url
    click_on "Edit", match: :first

    fill_in "Followed source", with: @fellow.followed_source_id
    fill_in "Follower", with: @fellow.follower_id
    click_on "Update Fellow"

    assert_text "Fellow was successfully updated"
    click_on "Back"
  end

  test "destroying a Fellow" do
    visit fellows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fellow was successfully destroyed"
  end
end
