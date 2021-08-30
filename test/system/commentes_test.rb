require "application_system_test_case"

class CommentesTest < ApplicationSystemTestCase
  setup do
    @commente = commentes(:one)
  end

  test "visiting the index" do
    visit commentes_url
    assert_selector "h1", text: "Commentes"
  end

  test "creating a Commente" do
    visit commentes_url
    click_on "New Commente"

    fill_in "Body", with: @commente.body
    fill_in "Post", with: @commente.post
    click_on "Create Commente"

    assert_text "Commente was successfully created"
    click_on "Back"
  end

  test "updating a Commente" do
    visit commentes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @commente.body
    fill_in "Post", with: @commente.post
    click_on "Update Commente"

    assert_text "Commente was successfully updated"
    click_on "Back"
  end

  test "destroying a Commente" do
    visit commentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commente was successfully destroyed"
  end
end
