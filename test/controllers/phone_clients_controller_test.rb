require 'test_helper'

class PhoneClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_client = phone_clients(:one)
  end

  test "should get index" do
    get phone_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_client_url
    assert_response :success
  end

  test "should create phone_client" do
    assert_difference('PhoneClient.count') do
      post phone_clients_url, params: { phone_client: { client_id: @phone_client.client_id, number: @phone_client.number } }
    end

    assert_redirected_to phone_client_url(PhoneClient.last)
  end

  test "should show phone_client" do
    get phone_client_url(@phone_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_client_url(@phone_client)
    assert_response :success
  end

  test "should update phone_client" do
    patch phone_client_url(@phone_client), params: { phone_client: { client_id: @phone_client.client_id, number: @phone_client.number } }
    assert_redirected_to phone_client_url(@phone_client)
  end

  test "should destroy phone_client" do
    assert_difference('PhoneClient.count', -1) do
      delete phone_client_url(@phone_client)
    end

    assert_redirected_to phone_clients_url
  end
end
