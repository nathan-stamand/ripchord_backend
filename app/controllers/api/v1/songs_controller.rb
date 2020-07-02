class Api::V1::SongsController < ApplicationController
  def index
    if user = User.find_by(id: params[:user_id])
      songs = user.songs
    else
      songs = Song.all
    end
    render json: SongSerializer.new(songs)
  end

  def create
    song = Song.create(song_params)
    render json: SongSerializer.new(song)
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: SongSerializer.new(song)
  end

  def update
    song = Song.find_by(id: params[:id])
    song.update(song_params)
    render json: SongSerializer.new(song)
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: {songId: song.id}
  end

  private

  def song_params
    params.require(:song).permit(:title, :chords, :user_id)
  end
end
