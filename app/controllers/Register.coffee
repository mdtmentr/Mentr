'use strict'

angular.module('mentrApp')
  .controller 'RegisterCtrl', ($scope, $timeout) ->
    # Bind controller data
    do ->
      $scope.text_field0 = {}

      $scope.text_field0.value = '' # default value

      $scope.text_field1 = {}

      $scope.text_field1.value = '' # default value

      $scope.text_field2 = {}

      $scope.text_field2.value = '' # default value


    # Attach listeners

    $scope.button3Tap = ->
      steroids.data
        .resource('ApplicationUser')
        .create({ location: $scope.text_field2.value, username: $scope.text_field0.value })  
        .then(
          (result) ->
            steroids.layers.pop {}
          (error) ->
        )


    # Initialize controller
    do ->
      steroids.data.reactive.whenVisible.onValue ->
        steroids.data.resource('ApplicationUser')
          .findAll({  })
          .then((results) -> do (id = steroids.view.params['uid']) ->
            for result in results
              if id is result['uid']
                return result
          )
          .then (result) ->
            $scope.$apply ->
              $scope['ApplicationUser'] = result

      steroids.view.navigationBar.show ' '
