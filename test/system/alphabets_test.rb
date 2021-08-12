require "application_system_test_case"

class AlphabetsTest < ApplicationSystemTestCase
  setup do
    @alphabet = alphabets(:one)
  end

  test "visiting the index" do
    visit alphabets_url
    assert_selector "h1", text: "Alphabets"
  end

  test "creating a Alphabet" do
    visit alphabets_url
    click_on "New Alphabet"

    fill_in "Audio", with: @alphabet.audio
    fill_in "Keycode", with: @alphabet.keycode
    fill_in "Letter", with: @alphabet.letter
    click_on "Create Alphabet"

    assert_text "Alphabet was successfully created"
    click_on "Back"
  end

  test "updating a Alphabet" do
    visit alphabets_url
    click_on "Edit", match: :first

    fill_in "Audio", with: @alphabet.audio
    fill_in "Keycode", with: @alphabet.keycode
    fill_in "Letter", with: @alphabet.letter
    click_on "Update Alphabet"

    assert_text "Alphabet was successfully updated"
    click_on "Back"
  end

  test "destroying a Alphabet" do
    visit alphabets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alphabet was successfully destroyed"
  end
end
