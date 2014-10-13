angular.module('degrees')
.factory 'GameService', ($http) ->

  new class GameService
    constructor: () ->

    findAll: (obj) ->
      $http.get("/songs.json?artist_id=#{obj.artistID}&page=1")
