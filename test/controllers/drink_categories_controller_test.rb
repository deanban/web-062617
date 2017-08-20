require 'test_helper'

class DrinkCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drink_categories_index_url
    assert_response :success
  end

  test "should get new" do
    get drink_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get drink_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get drink_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get drink_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get drink_categories_destroy_url
    assert_response :success
  end

end
