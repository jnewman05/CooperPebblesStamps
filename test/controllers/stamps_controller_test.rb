require 'test_helper'

class StampsControllerTest < ActionController::TestCase
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stamp" do
    assert_difference('Stamp.count') do
      post :create, stamp: { comments: @stamp.comments, date_lastr_viewed: @stamp.date_lastr_viewed, description: @stamp.description, face: @stamp.face, grouping_id: @stamp.grouping_id, id: @stamp.id, location_id: @stamp.location_id, location_type_name: @stamp.location_type_name, location_type_num: @stamp.location_type_num, num_in_block: @stamp.num_in_block, num_mint: @stamp.num_mint, num_used: @stamp.num_used, number_of_booklets: @stamp.number_of_booklets, scott_number: @stamp.scott_number, scotts_mint_value: @stamp.scotts_mint_value, scotts_used_value: @stamp.scotts_used_value, total_all: @stamp.total_all, total_mint_value: @stamp.total_mint_value, total_used_value: @stamp.total_used_value, type_id: @stamp.type_id, year_issued: @stamp.year_issued }
    end

    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should show stamp" do
    get :show, id: @stamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stamp
    assert_response :success
  end

  test "should update stamp" do
    patch :update, id: @stamp, stamp: { comments: @stamp.comments, date_lastr_viewed: @stamp.date_lastr_viewed, description: @stamp.description, face: @stamp.face, grouping_id: @stamp.grouping_id, id: @stamp.id, location_id: @stamp.location_id, location_type_name: @stamp.location_type_name, location_type_num: @stamp.location_type_num, num_in_block: @stamp.num_in_block, num_mint: @stamp.num_mint, num_used: @stamp.num_used, number_of_booklets: @stamp.number_of_booklets, scott_number: @stamp.scott_number, scotts_mint_value: @stamp.scotts_mint_value, scotts_used_value: @stamp.scotts_used_value, total_all: @stamp.total_all, total_mint_value: @stamp.total_mint_value, total_used_value: @stamp.total_used_value, type_id: @stamp.type_id, year_issued: @stamp.year_issued }
    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete :destroy, id: @stamp
    end

    assert_redirected_to stamps_path
  end
end
