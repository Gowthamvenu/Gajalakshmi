var app=angular.module('GLH',['ngRoute']);

	/*// configure our routes
	app.config(function($routeProvider,$locationProvider) {
		$locationProvider.hashPrefix('');
		$routeProvider

			// route for the home page
			.when('/', {
				templateUrl : 'views/locate.jsp',
				controller  : 'indexController'
			})
			//route for product page
			.when('/products',{
				templateUrl : '/resources/pages/products.jsp',
				controller  : 'productController'
			})
			// route for the about page
			.when('/locate', {
				templateUrl : '/resources/pages/locate.jsp',
				controller  : 'locateController'
			})

			// route for the contact page
			.when('/contact', {
				templateUrl : '/resources/pages/contact.jsp',
				controller  : 'contactController'
			})
			.otherwise({ redirectTo: '/' });
	});*/

	/*app.controller('mainController',function($scope){
		console.log("main controller");
	});*/
	app.controller('indexController',function($scope){
		console.log("index controller");
	});
	app.controller('productController',function($scope){
		console.log("product controller");
	});
	app.controller('locateController',function($scope){
		console.log("location controller");
	});
	app.controller('contactController',function($scope,$http){
		console.log("contact controller");
		$scope.sendEmail=function(contact){
			console.log(contact);
			// Simple GET request example:
			$http({
			  method: 'POST',
			  url: '/sendMail',
			  data: {contact:contact}
			}).then(function successCallback(response) {
			    // this callback will be called asynchronously
			    // when the response is available
			  }, function errorCallback(response) {
			    // called asynchronously if an error occurs
			    // or server returns response with an error status.
			  });
		}
	});