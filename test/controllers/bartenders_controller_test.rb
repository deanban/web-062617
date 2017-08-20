require 'test_helper'

class BartendersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bartenders_index_url
    assert_response :success
  end

  test "should get new" do
    get bartenders_new_url
    assert_response :success
  end

  test "should get create" do
    get bartenders_create_url
    assert_response :success
  end

end
