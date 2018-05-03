require 'test_helper'

class EstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estate = estates(:one)
  end

  test "should get index" do
    get estates_url
    assert_response :success
  end

  test "should get new" do
    get new_estate_url
    assert_response :success
  end

  test "should create estate" do
    assert_difference('Estate.count') do
      post estates_url, params: { estate: { area: @estate.area, bathrooms: @estate.bathrooms, bedrooms: @estate.bedrooms, estate_address: @estate.estate_address, rent: @estate.rent, square_footage: @estate.square_footage } }
    end

    assert_redirected_to estate_url(Estate.last)
  end

  test "should show estate" do
    get estate_url(@estate)
    assert_response :success
  end

  test "should get edit" do
    get edit_estate_url(@estate)
    assert_response :success
  end

  test "should update estate" do
    patch estate_url(@estate), params: { estate: { area: @estate.area, bathrooms: @estate.bathrooms, bedrooms: @estate.bedrooms, estate_address: @estate.estate_address, rent: @estate.rent, square_footage: @estate.square_footage } }
    assert_redirected_to estate_url(@estate)
  end

  test "should destroy estate" do
    assert_difference('Estate.count', -1) do
      delete estate_url(@estate)
    end

    assert_redirected_to estates_url
  end
end
