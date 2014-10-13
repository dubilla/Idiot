angular.module('degrees')
.directive 'game', () ->
  restrict: 'A'
  scope:
    artist: '@'
  template: """
      <div style="float: left;">
        <div ng-if="game.completed">
          <h4>Congratulations!</h4>
          <div>You got to Kendrick Lamar in {{game.path.length}} moves!</div>
        </div>
      <div ng-if="!game.completed">
        <h1>{{game.artist.name}}</h1>
        <h4>Songs</h4>
        <ul>
          <li ng-repeat="song in game.songs">
            <div>Song: {{song.title}}</div>
            <a ng-click="game.chooseArtist(song)">{{song.artist.name}}</a>
          </li>
        </ul>
      </div>
    </div>
    <div style="float: right;">
      <h4>Path</h4>
      <h4>{{game.path.length}} Moves</h4>
      <ul>
        <li ng-repeat="song in game.path">
          <div>{{$index + 1}})</div>
            <ul>
              <li>Artist: {{song.artist.name}}</li>
              <li>Song: {{song.title}}</li>
            </ul>
        </li>
      </ul>
    </div>
  """
  controller: 'GameCtrl as game'
  link: (scope, element, attrs) ->
