'use strict'

angular.module('mentrApp')
  .controller 'RegistermodalCtrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.text_field0 = {}

      $scope.text_field0.value = '' # default value

      $scope.Password_Reg = {}

      $scope.Password_Reg.value = '' # default value

      $scope.Email_Reg = {}

      $scope.Email_Reg.value = '' # default value

      $scope.FirstName_Reg = {}

      $scope.FirstName_Reg.value = '' # default value

      $scope.LastName_Reg = {}

      $scope.LastName_Reg.value = '' # default value

      $scope.Location_Reg = {}

      $scope.Location_Reg.value = '' # default value

      $scope.Industry_Reg = {}

      $scope.Industry_Reg.value = '' # default value


    # Attach listeners

    $scope.RegisterTap = ->
      steroids.modal.hide {}

    $scope.button8Tap = ->
      steroids.modal.hide {}


    # Initialize controller
    do ->
      steroids.view.navigationBar.show ' '
