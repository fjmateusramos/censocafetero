require "application_system_test_case"

class Encuesta1sTest < ApplicationSystemTestCase
  setup do
    @encuesta1 = encuesta1s(:one)
  end

  test "visiting the index" do
    visit encuesta1s_url
    assert_selector "h1", text: "Encuesta1s"
  end

  test "creating a Encuesta1" do
    visit encuesta1s_url
    click_on "New Encuesta1"

    fill_in "Encuesta", with: @encuesta1.encuesta
    click_on "Create Encuesta1"

    assert_text "Encuesta1 was successfully created"
    click_on "Back"
  end

  test "updating a Encuesta1" do
    visit encuesta1s_url
    click_on "Edit", match: :first

    fill_in "Encuesta", with: @encuesta1.encuesta
    click_on "Update Encuesta1"

    assert_text "Encuesta1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Encuesta1" do
    visit encuesta1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Encuesta1 was successfully destroyed"
  end
end
