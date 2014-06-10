class SongsController < ApplicationController
  def index
    @songs = Song.order(created_at: :asc)
  end
end
