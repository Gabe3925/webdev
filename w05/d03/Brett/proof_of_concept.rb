require 'httparty'
require 'pry'


# Seatgeek API
seatgeek_response = HTTParty.get("http://api.seatgeek.com/2/events?venue.id=538")
# name for Conor Oberst
artist_name = seatgeek_response["events"][2]["performers"][0]["name"]

# Spotify API
artist_name.gsub!(" ", "+")
# Get first result of search for artist from event and take spotify
spotify_response = HTTParty.get("https://ws.spotify.com/search/1/artist.json?q=#{artist_name}")["artists"][0]["href"]
# Will put this in an iframe next to the event
spotify_widget = "https://embed.spotify.com/?uri=#{spotify_response}"


binding.pry
