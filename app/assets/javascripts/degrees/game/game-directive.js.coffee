angular.module('degrees')
.directive 'game', () ->
  restrict: 'A'
  # template: JST['degrees/game/game']
  template: """
    <h4>Songs</h4>
    <ul ng-repeat="song in game.songs">
      <li>{{song.title}}</li>
    </ul>
  """
  controller: 'GameCtrl as game'
  link: (scope, element, attrs) ->
