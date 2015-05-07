'use strict'

angular.module('mentrApp')
  .controller 'FirstpageCtrl', ($scope, $timeout) ->
    # Bind controller data
    do ->

    # Attach listeners

    $scope.button1Tap = ->
      LoginPageWebView = new steroids.views.WebView 'views/LoginPage/index.html'
      steroids.layers.push { view: LoginPageWebView }

    $scope.button2Tap = ->
      RegisterModalWebView = new steroids.views.WebView 'views/RegisterModal/index.html'
      steroids.modal.show { view: RegisterModalWebView }


    # Initialize controller
    do ->
      steroids.view.navigationBar.show ' '
