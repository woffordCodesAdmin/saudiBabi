require "test_helper"

class AlphabetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alphabet = alphabets(:one)
  end

  test "should get index" do
    get alphabets_url
    assert_response :success
  end

  test "should get new" do
    get new_alphabet_url
    assert_response :success
  end

  test "should create alphabet" do
    assert_difference('Alphabet.count') do
      post alphabets_url, params: { alphabet: { audio: @alphabet.audio, keycode: @alphabet.keycode, letter: @alphabet.letter } }
    end

    assert_redirected_to alphabet_url(Alphabet.last)
  end

  test "should show alphabet" do
    get alphabet_url(@alphabet)
    assert_response :success
  end

  test "should get edit" do
    get edit_alphabet_url(@alphabet)
    assert_response :success
  end

  test "should update alphabet" do
    patch alphabet_url(@alphabet), params: { alphabet: { audio: @alphabet.audio, keycode: @alphabet.keycode, letter: @alphabet.letter } }
    assert_redirected_to alphabet_url(@alphabet)
  end

  test "should destroy alphabet" do
    assert_difference('Alphabet.count', -1) do
      delete alphabet_url(@alphabet)
    end

    assert_redirected_to alphabets_url
  end
end
