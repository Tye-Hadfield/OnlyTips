require "application_system_test_case"

class RaceCoursesTest < ApplicationSystemTestCase
  setup do
    @race_course = race_courses(:one)
  end

  test "visiting the index" do
    visit race_courses_url
    assert_selector "h1", text: "Race Courses"
  end

  test "creating a Race course" do
    visit race_courses_url
    click_on "New Race Course"

    fill_in "Address", with: @race_course.address
    fill_in "Race course name", with: @race_course.race_course_name
    click_on "Create Race course"

    assert_text "Race course was successfully created"
    click_on "Back"
  end

  test "updating a Race course" do
    visit race_courses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @race_course.address
    fill_in "Race course name", with: @race_course.race_course_name
    click_on "Update Race course"

    assert_text "Race course was successfully updated"
    click_on "Back"
  end

  test "destroying a Race course" do
    visit race_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Race course was successfully destroyed"
  end
end
