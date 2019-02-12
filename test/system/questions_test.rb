require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "What?!"

    assert_text "I don't care, get dressed and go to work!"
    # take_screenshot
  end

  test "asking a question yields Silly question from coach" do
    visit ask_url
    fill_in "question", with: "?"
    click_on "What?!"

    assert_text "Silly question, get dressed and go to work!"
    # take_screenshot
  end

  test "telling Going to work yields Great! from coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "What?!"

    assert_text "Great!"
    # take_screenshot
  end
end
