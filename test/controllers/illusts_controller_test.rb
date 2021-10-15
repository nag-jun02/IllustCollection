require "test_helper"

class IllustsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get illusts_index_url
    assert_response :success
  end

  test "should get show" do
    get illusts_show_url
    assert_response :success
  end

  test "should get new" do
    get illusts_new_url
    assert_response :success
  end

  test "should get edit" do
    get illusts_edit_url
    assert_response :success
  end
end
