class PlaylistsController < ApplicationController
  def index
     @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  # POST /playlists
  def create
    @playlist = Playlist.new(playlist_params)

    respond_to do |format|
      if @playlist.save
        format.html { redirect_to @playlist, notice: 'Playlist was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /playlists/1
  def update
    @playlist = Playlist.find(params[:id])

    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to @playlist, notice: 'Playlist was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist = Playlist.find(params[:id])

    @playlist.destroy
    respond_to do |format|
      format.html { redirect_to playlists_url, notice: 'Playlist was successfully destroyed.' }
    end
  end

  def playlist_params
    params.require(:playlist).permit(:name, :likes, :description)
  end

end
