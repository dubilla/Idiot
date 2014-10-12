class GameCtrl
  constructor: (@$http) ->
    @path = []
    @songs = @getSongs(2)

  getSongs: (artistID) ->
    @$http.get("/songs.json?artist_id=#{artistID}&page=1").then (response) =>
      @songs = response.data

  chooseArtist: (song) ->
    @path.push song
    @getSongs(song.artist.id)

angular.module('degrees')
.controller 'GameCtrl', GameCtrl
