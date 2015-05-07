'use strict'

angular.module('mentrApp')
  .controller 'LoginpageCtrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.Login_User = {}

      $scope.Login_User.value = '' # default value

      $scope.Login_Password = {}

      $scope.Login_Password.value = '' # default value


    # Attach listeners

    $scope.LoginTap = ->
      KimonoWebView = new steroids.views.WebView 'views/Kimono/index.html'
      steroids.layers.push { view: KimonoWebView }

    $scope.button3Tap = ->
      steroids.layers.pop {}


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('ApplicationUser')
          .findAll({  })
          .then (result) ->
            $scope.$apply ->
              $scope['ApplicationUser'] = result

      steroids.view.navigationBar.show ' '
