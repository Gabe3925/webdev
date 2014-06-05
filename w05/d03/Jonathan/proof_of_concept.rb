require 'pry'
require 'httparty'

game_id = ["2013090500", "2013090803", "2013090804", "2013090805", "2013090806", "2013090807", "2013090808", "2013090809", "2013090802", "2013090801", "2013090800", "2013090811", "2013090810", "2013090812", "2013090900", "2013090901", "2013091200", "2013091500", "2013091508", "2013091507", "2013091506", "2013091505", "2013091504", "2013091501", "2013091502", "2013091503", "2013091510", "2013091509", "2013091512", "2013091511", "2013091513", "2013091600", "2013091900", "2013092200", "2013092210", "2013092209", "2013092208", "2013092207", "2013092206", "2013092201", "2013092202", "2013092204", "2013092203", "2013092205", "2013092211", "2013092212", "2013092213", "2013092300", "2013122910", "2013122909", "2013122902", "2013122911", "2013122904", "2013122905", "2013122906", "2013122900", "2013122908", "2013122907", "2013122915", "2013122901", "2013122912", "2013122913", "2013122914", "2013122903", "2013122200", "2013122202", "2013122203", "2013122204", "2013122206", "2013122201", "2013122205", "2013122209", "2013122208", "2013122210", "2013122211", "2013122213", "2013122212", "2013122214", "2013122207", "2013122300", "2013121200", "2013121500", "2013121508", "2013121506", "2013121505", "2013121504", "2013121503", "2013121502", "2013121501", "2013121511", "2013121510", "2013121512", "2013121509", "2013121507", "2013121513", "2013121600", "2013120500", "2013120801", "2013120802", "2013120803", "2013120808", "2013120800", "2013120813", "2013120807", "2013120806", "2013120805", "2013120809", "2013120810", "2013120812", "2013120811", "2013120804", "2013120900", "2013112800", "2013112801", "2013112802", "2013120102", "2013120106", "2013120105", "2013120104", "2013120109", "2013120100", "2013120101", "2013120107", "2013120108", "2013120103", "2013120110", "2013120111", "2013120200", "2013112100", "2013112402", "2013112403", "2013112404", "2013112405", "2013112406", "2013112401", "2013112407", "2013112400", "2013112409", "2013112408", "2013112410", "2013112411", "2013112500", "2013111400", "2013111700", "2013111708", "2013111707", "2013111706", "2013111704", "2013111703", "2013111701", "2013111702", "2013111705", "2013111712", "2013111711", "2013111710", "2013111709", "2013111800", "2013110700", "2013111003", "2013111007", "2013111006", "2013111005", "2013111004", "2013111000", "2013111001", "2013111002", "2013111008", "2013111009", "2013111010", "2013111011", "2013111100", "2013103100", "2013110301", "2013110302", "2013110303", "2013110304", "2013110300", "2013110305", "2013110306", "2013110307", "2013110308", "2013110309", "2013110310", "2013110400", "2013102400", "2013102701", "2013102702", "2013102703", "2013102704", "2013102700", "2013102705", "2013102706", "2013102707", "2013102708", "2013102709", "2013102710", "2013102800", "2013101700", "2013102000", "2013102009", "2013102008", "2013102007", "2013102006", "2013102004", "2013102001", "2013102002", "2013102010", "2013102005", "2013102011", "2013102003", "2013102012", "2013102100", "2013101000", "2013101300", "2013101301", "2013101302", "2013101303", "2013101304", "2013101305", "2013101307", "2013101306", "2013101308", "2013101309", "2013101310", "2013101311", "2013101312", "2013101400", "2013100300", "2013100601", "2013100602", "2013100603", "2013100604", "2013100600", "2013100605", "2013100607", "2013100606", "2013100608", "2013100609", "2013100611", "2013100610", "2013100700", "2013092600", "2013092900", "2013092907", "2013092906", "2013092905", "2013092904", "2013092903", "2013092901", "2013092902", "2013092908", "2013092910", "2013092909", "2013092911", "2013092912", "2013093000"]

# class Player < ActiveRecord::Base

  game_id.each do |game|
    response = HTTParty.get("http://www.nfl.com/liveupdate/game-center/#{game}/#{game}_gtd.json")

    response[game]['home']['stats']['passing'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "QB")
    end
    response[game]['home']['stats']['rushing'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "RB")
    end
    response[game]['home']['stats']['receiving'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "WR/TE")
    end
    response[game]['away']['stats']['passing'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "QB")
    end
    response[game]['away']['stats']['rushing'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "RB")
    end
    response[game]['away']['stats']['receiving'].each do |id, player|
      Player.create(json_id: id, name: player["name"], position: "WR/TE")
    end
  end

# end


# response[game]['away']['abbr'].each do |team|
#   Player.create(team: team["abbr"])
# end

# response['2013090500']['home']['stats']['rushing'].map { |id, player| [id, player["name"]] }

# response['2013090500']['home']['stats']['receiving'].map { |id, player| [id, player["name"]] }

# response['2013090500']['home']['stats']['passing'].map { |id, player| [id, player["name"]] }

# response['2013090500']['away']['stats'].collect_concat { |key, value| value.values }

# response['2013090500']['home']['stats']['rushing'].each { |id, player| Player.create({player_id_number: id, name: player["name"]})}
