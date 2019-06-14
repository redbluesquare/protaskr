angular.
  module('protaskr').
  config(['$routeProvider',
    function config($routeProvider) {
      $routeProvider.
        when('/products', {
          template: '<product-list></product-list>'
        }).
        when('/products/:sku', {
          template: '<product-detail></product-detail>'
        }).
        otherwise('/products');
    }
  ]);