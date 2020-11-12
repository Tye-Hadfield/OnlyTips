require 'test_helper'

class HorsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horse = horses(:one)
  end

  test "should get index" do
    get horses_url
    assert_response :success
  end

  test "should get new" do
    get new_horse_url
    assert_response :success
  end

  test "should create horse" do
    assert_difference('Horse.count') do
      post horses_url, params: { horse: { current_places: @horse.current_places, current_win: @horse.current_win, horse_name: @horse.horse_name, horse_number: @horse.horse_number, jockey: @horse.jockey, trainer: @horse.trainer } }
    end

    assert_redirected_to horse_url(Horse.last)
  end

  test "should show horse" do
    get horse_url(@horse)
    assert_response :success
  end

  test "should get edit" do
    get edit_horse_url(@horse)
    assert_response :success
  end

  test "should update horse" do
    patch horse_url(@horse), params: { horse: { current_places: @horse.current_places, current_win: @horse.current_win, horse_name: @horse.horse_name, horse_number: @horse.horse_number, jockey: @horse.jockey, trainer: @horse.trainer } }
    assert_redirected_to horse_url(@horse)
  end

  test "should destroy horse" do
    assert_difference('Horse.count', -1) do
      delete horse_url(@horse)
    end

    assert_redirected_to horses_url
  end
end
