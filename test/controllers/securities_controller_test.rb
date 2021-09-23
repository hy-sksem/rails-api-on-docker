require 'test_helper'

class SecuritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security = securities(:one)
  end

  test "should get index" do
    get securities_url, as: :json
    assert_response :success
  end

  test "should create security" do
    assert_difference('Security.count') do
      post securities_url, params: { security: { name: @security.name } }, as: :json
    end

    assert_response 201
  end

  test "should show security" do
    get security_url(@security), as: :json
    assert_response :success
  end

  test "should update security" do
    patch security_url(@security), params: { security: { name: @security.name } }, as: :json
    assert_response 200
  end

  test "should destroy security" do
    assert_difference('Security.count', -1) do
      delete security_url(@security), as: :json
    end

    assert_response 204
  end
end
