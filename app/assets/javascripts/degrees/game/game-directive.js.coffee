angular.module('degrees')
.directive 'game', () ->
  restrict: 'A'
  # template: JST['degrees/game/game']
  template: """
    <div style="float: left;">
      <h4>Songs</h4>
      <ul>
        <li ng-repeat="song in game.songs">
          <div>Song: {{song.title}}</div>
          <a ng-click="game.chooseArtist(song)">{{song.artist.name}}</a>
        </li>
      </ul>
    </div>
    <div style="float: right;">
      <h4>Path</h4>
      <h4>{{game.path.length}} Moves</h4>
      <ul>
        <li ng-repeat="song in game.path">
          <div>{{song.artist.name}}</div>
          <div>{{song.title}}</div>
        </li>
      </ul>
    </div>
  """
  controller: 'GameCtrl as game'
  link: (scope, element, attrs) ->
