class GameCtrl
  constructor: (@$http, @GameService) ->
    @path = []
    @completed = false
    @songs = @getSongs(2)

  getSongs: (artistID) ->
    @GameService.findAll({artistID: artistID}).then (response) =>
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
