class GameCtrl
  constructor: (@$http) ->
    @songs = @getSongs()

  getSongs: () ->
    @$http.get('/songs.json?artist_id=2&page=1').then (response) =>
      @songs = response.data

angular.module('degrees')
.controller 'GameCtrl', GameCtrl
