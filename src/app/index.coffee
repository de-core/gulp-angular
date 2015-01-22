app = angular.module "gulpAngular", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ngRoute', 'ngMaterial', 'sidenav']
  .config ($routeProvider) ->
    $routeProvider
      .when "/",
        templateUrl: "app/main/main.html"
        controller: "MainCtrl"
      .when "/contact",
        templateUrl: "components/contact-form/contact.html"
        controller: "MainCtrl"
      .otherwise
        redirectTo: "/"

angular.module("sidenav", [ "ngMaterial" ]).controller("sideNav", ($scope, $timeout, $mdSidenav, $log) ->
  $scope.toggleLeft = ->
    $mdSidenav("left").toggle().then ->
      $log.debug "toggle left is done"

).controller "LeftCtrl", ($scope, $timeout, $mdSidenav, $log) ->
  $scope.close = ->
    $mdSidenav("left").close().then ->
      $log.debug "close LEFT is done"
# тут незакенчена возня с отправкой данных из формы контакты
user = {}
app.controller "userForm", ($scope, $timeout) ->
  this.user = {}
  this.sendMsg = (user) ->
    user.push(this.user)
    console.log(user)
###


