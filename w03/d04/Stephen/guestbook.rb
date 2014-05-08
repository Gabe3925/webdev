require 'sinatra'
require 'sinatra/reloader'

guest_book = {
  1 => "Jack Nicholson",
  2 => "Shelly Duvall",
  3 => "Danny Lloyd"
}

get '/guest_book' do
  return guest_book.values.join(", ")
end

get '/guest_book/:id' do
  return "#{guest_book[params[:id].to_i]}"
end

