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

    slim :question
  end

  get "/write-test" do
    @instruction = "Write a test."

    slim :instruction
  end
end
