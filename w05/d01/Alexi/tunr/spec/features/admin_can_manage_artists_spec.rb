require 'spec_helper'

describe 'an admin can manage artists' do
  let!(:beyonce) { Artist.create(:name => "Beyonce", :genre => "Pop", :photo_url => "www.google.com")}

  it 'can create a new artist' do
    visit new_artist_path
    fill_in 'artist_name', with: 'Kesha'  
    fill_in 'artist_genre', with: 'garbage'
    fill_in 'artist_photo_url', with: 'http://wac.450f.edgecastcdn.net/80450F/popcrush.com/files/2013/05/Kesha2.jpg'
    click_button('submit')
    expect(page).to have_content 'Kesha'
  end

  it "can view an exiting artist" do
    visit artist_path(beyonce)
    expect(page).to have_content "Beyonce"
  end

  it "can update an artist" do
    vist edit_artist_path (beyonce)
    fill_in "artist_name", with: "Bey"
    click_button("create")
    expect(page).to have_content "Bey"
  end

  it "can destroy an artist" do
    visit artist_path(beyonce)
    click_button("destroy")
    expect(page).to_not have_conent("Beyonce")
  end
end
