require 'test_helper'

class RaceCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race_course = race_courses(:one)
  end

  test "should get index" do
    get race_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_race_course_url
    assert_response :success
  end

  test "should create race_course" do
    assert_difference('RaceCourse.count') do
      post race_courses_url, params: { race_course: { address: @race_course.address, race_course_name: @race_course.race_course_name } }
    end

    assert_redirected_to race_course_url(RaceCourse.last)
  end

  test "should show race_course" do
    get race_course_url(@race_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_race_course_url(@race_course)
    assert_response :success
  end

  test "should update race_course" do
    patch race_course_url(@race_course), params: { race_course: { address: @race_course.address, race_course_name: @race_course.race_course_name } }
    assert_redirected_to race_course_url(@race_course)
  end

  test "should destroy race_course" do
    assert_difference('RaceCourse.count', -1) do
      delete race_course_url(@race_course)
    end

    assert_redirected_to race_courses_url
  end
end
