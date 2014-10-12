angular.module('degrees', [
])
.config ($httpProvider) ->
  # Default headers/transformations for making requests rails-friendly
  $httpProvider.defaults.headers.post['Content-Type'] = 'application/json; charset=UTF-8'
  $httpProvider.defaults.headers.common['Accept'] = "application/json"
