require 'spec_helper'

describe "Admin can manage artists"  do

  it "can create a new artist" do
    visit new_artist_path
    fill_in "Name", with: "Kesha"
    fill_in "Genre", with: "garbage"
    fill_in "Photo url", with: "http://www.urbansplatter.com/wp-content/uploads/2013/11/Kesha-1880367.jpg"
    click_button("submit")

    expect(page).to have_content "Kesha"
  end

end
