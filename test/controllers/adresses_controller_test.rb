require "test_helper"

class AdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get adresses_url, as: :json
    assert_response :success
  end

  test "should create adress" do
    assert_difference("Adresse.count") do
      post adresses_url, params: { adress: { adress: @adress.adress, city: @adress.city, user_id: @adress.user_id, zipcode: @adress.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show adress" do
    get adress_url(@adress), as: :json
    assert_response :success
  end

  test "should update adress" do
    patch adress_url(@adress), params: { adress: { adress: @adress.adress, city: @adress.city, user_id: @adress.user_id, zipcode: @adress.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy adress" do
    assert_difference("Adresse.count", -1) do
      delete adress_url(@adress), as: :json
    end

    assert_response :no_content
  end
end
