require "spec_helper"
require_relative "../lib/pair_programming"



describe "pair programming bot" do
  Capybara.app = PairProgrammingBot

  describe "'do you have a test?' page" do
    before { visit "/" }

    it "asks the user if they have written a test" do
      expect(page).to have_content "Do you have a test for that?"
      expect(page).to have_selector ".yes"
      expect(page).to have_selector ".no"
    end

    context "when the user answers 'Yes'" do
      it "asks the user if the test passed" do
        click_link "Yes"

        expect(page).to have_content "Does the test pass?"
        expect(page).to have_selector ".yes"
        expect(page).to have_selector ".no"
      end
    end

    context "when the user answers 'No'" do
      it "asks the user if the test passed" do
        click_link "No"

        expect(page).to have_content "Write a test."
        expect(page).to have_selector ".done"
      end
    end
  end

  describe "'did your test pass?' page" do
    before do
      visit "/"
      click_link "Yes"
    end

    context "when the user answers 'Yes" do
      it "asks the user if the code needs refactoring" do
        click_link "Yes"

        expect(page).to have_content "Need to refactor?"
        expect(page).to have_selector ".yes"
        expect(page).to have_selector ".no"
      end
    end

    context "when the user answers 'No'" do
      it "asks the user if the test passed" do
        click_link "No"

        expect(page).to have_content "Write just enough code for the test to pass."
        expect(page).to have_selector ".done"
      end
    end
  end

  # context "when the user answers 'No' to having a test" do
  #    before do
  #     visit "/"     # asks the user if the they've written a test
  #     click "No"
  #   end

  #   it "asks the user to write a test" do
  #     expect(page).to have_content "Write a test."
  #     expec(page).to have_selector ".done"
  #   end

  #   it "tells the user to write just enough code for the test to pass" do
  #     visit "/"
  #     click_button
  #   end
  # end
end
