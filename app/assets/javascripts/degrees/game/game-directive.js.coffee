angular.module('degrees')
.directive 'game', () ->
  restrict: 'A'
  # template: JST['degrees/game/game']
  template: """
    <h4>Songs</h4>
    <ul ng-repeat="song in songs">
      <li>{{song.name}}</li>
    </ul>
  """
  link: (scope, element, attrs) ->

    scope.songs = [{name: 'Woot'}, {name: 'Wooby Woop'}]
