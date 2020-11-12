require "application_system_test_case"

class HorsesTest < ApplicationSystemTestCase
  setup do
    @horse = horses(:one)
  end

  test "visiting the index" do
    visit horses_url
    assert_selector "h1", text: "Horses"
  end

  test "creating a Horse" do
    visit horses_url
    click_on "New Horse"

    fill_in "Current places", with: @horse.current_places
    fill_in "Current win", with: @horse.current_win
    fill_in "Horse name", with: @horse.horse_name
    fill_in "Horse number", with: @horse.horse_number
    fill_in "Jockey", with: @horse.jockey
    fill_in "Trainer", with: @horse.trainer
    click_on "Create Horse"

    assert_text "Horse was successfully created"
    click_on "Back"
  end

  test "updating a Horse" do
    visit horses_url
    click_on "Edit", match: :first

    fill_in "Current places", with: @horse.current_places
    fill_in "Current win", with: @horse.current_win
    fill_in "Horse name", with: @horse.horse_name
    fill_in "Horse number", with: @horse.horse_number
    fill_in "Jockey", with: @horse.jockey
    fill_in "Trainer", with: @horse.trainer
    click_on "Update Horse"

    assert_text "Horse was successfully updated"
    click_on "Back"
  end

  test "destroying a Horse" do
    visit horses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Horse was successfully destroyed"
  end
end
