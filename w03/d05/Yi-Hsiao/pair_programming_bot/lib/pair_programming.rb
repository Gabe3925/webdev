require "sinatra"
require "slim"

class PairProgrammingBot < Sinatra::Base
  get "/" do
    @question = "Do you have a test for that?"
    @yes_choice = "/did-your-test-pass"
    @no_choice = "/write-test"

    slim :question
  end

  get "/did-your-test-pass" do
    @question = "Does the test pass?"
    @yes_choice = "/do-you-need-refactoring"
    @no_choice = "/pass-your-test"

    slim :question
  end

  get "/do-you-need-refactoring" do
    @question = "Need to refactor?"
    @yes_choice = "/do-you-need-refactoring"
    @no_choice = "/pass-your-test"

    slim :question
  end

  get "/write-test" do
    @instruction = "Write a test."

    slim :instruction
  end

  get "/pass-your-test" do
    @instruction = "Write just enough code for the test to pass."

    slim :instruction
  end
end
