class GameCtrl
  constructor: (@$http) ->
    @path = []
    @completed = false
    @songs = @getSongs(2)

  getSongs: (artistID) ->
    @$http.get("/songs.json?artist_id=#{artistID}&page=1").then (response) =>
      @artist = response.data.artist
      @songs = response.data.songs

  chooseArtist: (song) ->
    @path.push song
    # Kendrick Lamar
    if song.artist.id == 1421
      @completed = true
    else
      @getSongs(song.artist.id)

angular.module('degrees')
.controller 'GameCtrl', GameCtrl
