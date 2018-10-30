require "application_system_test_case"

class TherapiesTest < ApplicationSystemTestCase
  setup do
    @therapy = therapies(:one)
  end

  test "visiting the index" do
    visit therapies_url
    assert_selector "h1", text: "Therapies"
  end

  test "creating a Therapy" do
    visit therapies_url
    click_on "New Therapy"

    fill_in "Name", with: @therapy.name
    fill_in "Price", with: @therapy.price
    fill_in "User", with: @therapy.user_id
    click_on "Create Therapy"

    assert_text "Therapy was successfully created"
    click_on "Back"
  end

  test "updating a Therapy" do
    visit therapies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @therapy.name
    fill_in "Price", with: @therapy.price
    fill_in "User", with: @therapy.user_id
    click_on "Update Therapy"

    assert_text "Therapy was successfully updated"
    click_on "Back"
  end

  test "destroying a Therapy" do
    visit therapies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Therapy was successfully destroyed"
  end
end
