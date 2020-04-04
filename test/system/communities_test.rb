require "application_system_test_case"

class CommunitiesTest < ApplicationSystemTestCase
  setup do
    @community = communities(:one)
  end

  test "visiting the index" do
    visit communities_url
    assert_selector "h1", text: "Communities"
  end

  test "creating a Community" do
    visit communities_url
    click_on "New Community"

    fill_in "Description", with: @community.description
    fill_in "Name", with: @community.name
    fill_in "Sidebar", with: @community.sidebar
    fill_in "Title", with: @community.title
    click_on "Create Community"

    assert_text "Community was successfully created"
    click_on "Back"
  end

  test "updating a Community" do
    visit communities_url
    click_on "Edit", match: :first

    fill_in "Description", with: @community.description
    fill_in "Name", with: @community.name
    fill_in "Sidebar", with: @community.sidebar
    fill_in "Title", with: @community.title
    click_on "Update Community"

    assert_text "Community was successfully updated"
    click_on "Back"
  end

  test "destroying a Community" do
    visit communities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community was successfully destroyed"
  end
end
