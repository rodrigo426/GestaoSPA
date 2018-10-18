require "application_system_test_case"

class PhoneClientsTest < ApplicationSystemTestCase
  setup do
    @phone_client = phone_clients(:one)
  end

  test "visiting the index" do
    visit phone_clients_url
    assert_selector "h1", text: "Phoneclients"
  end

  test "creating a Phone client" do
    visit phone_clients_url
    click_on "New Phoneclient"

    fill_in "Client", with: @phone_client.client_id
    fill_in "Number", with: @phone_client.number
    click_on "Create Phone client"

    assert_text "Phone client was successfully created"
    click_on "Back"
  end

  test "updating a Phone client" do
    visit phone_clients_url
    click_on "Edit", match: :first

    fill_in "Client", with: @phone_client.client_id
    fill_in "Number", with: @phone_client.number
    click_on "Update Phone client"

    assert_text "Phone client was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone client" do
    visit phone_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone client was successfully destroyed"
  end
end
