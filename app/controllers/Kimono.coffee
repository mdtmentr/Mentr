'use strict'

angular.module('mentrApp')
  .controller 'KimonoCtrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.button1Tap = ->
      `
      location.reload();
      `

    $scope.MentorMeTap = ->
      MatchPageWebView = new steroids.views.WebView 'views/MatchPage/index.html'
      steroids.layers.push { view: MatchPageWebView }


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('Mentors')
          .findAll({  })
          .then(_.sample)
          .then (result) ->
            $scope.$apply ->
              $scope['Mentors'] = result

      steroids.view.navigationBar.show ' '
