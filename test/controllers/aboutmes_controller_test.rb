require 'test_helper'

class AboutmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aboutme = aboutmes(:one)
  end

  test "should get index" do
    get aboutmes_url
    assert_response :success
  end

  test "should get new" do
    get new_aboutme_url
    assert_response :success
  end

  test "should create aboutme" do
    assert_difference('Aboutme.count') do
      post aboutmes_url, params: { aboutme: {  } }
    end

    assert_redirected_to aboutme_url(Aboutme.last)
  end

  test "should show aboutme" do
    get aboutme_url(@aboutme)
    assert_response :success
  end

  test "should get edit" do
    get edit_aboutme_url(@aboutme)
    assert_response :success
  end

  test "should update aboutme" do
    patch aboutme_url(@aboutme), params: { aboutme: {  } }
    assert_redirected_to aboutme_url(@aboutme)
  end

  test "should destroy aboutme" do
    assert_difference('Aboutme.count', -1) do
      delete aboutme_url(@aboutme)
    end

    assert_redirected_to aboutmes_url
  end
end
