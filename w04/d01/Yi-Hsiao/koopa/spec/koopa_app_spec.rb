require "spec_helper"
require_relative "helpers/shared_context"
require_relative "../koopa_app"

describe "koopa app" do
  Capybara.app = KoopaApp
  let(:koopa_root) { "/" }            # root path for koopa app
  let(:profile_link) { "a.profile" }  # link to individual koopa profile
  let(:add_new_link) { "a.add-new" }  # link to add new koopas

  describe "the process of viewing a specific koopa" do
    include_context "visits the site with existing koopa profiles"

    it "show info about a particular koopa" do
      visit koopa_root
      first(profile_link).click

      expect(page).to have_selector ".koopa-info"
    end
  end

  describe "the process of creating a new photo" do

    it "adds a new koopa to the directory" do
      visit koopa_root
      click add_new_link
      within "form" do
        fill_in "Name:", with: "Dry Bones"
        fill_in "Color:", with: "grey"
        fill_in "Photo URL:", with: "/img/dry_bones.png"
        click_link "Add Koopa"
      end
    end
  end
end
