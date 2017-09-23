var app=angular.module('GLH',['ngRoute']);

	alert("hai");
	// configure our routes
	app.config(function($routeProvider,$locationProvider) {
		$locationProvider.hashPrefix('');
		$routeProvider

			// route for the home page
			.when('/', {
				templateUrl : '~/pages/index2.jsp',
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
	});

	app.controller('mainController',function($scope){
		alert("main controller");
	});
	app.controller('indexController',function($scope){
		alert("index controller");
	});
	app.controller('productController',function($scope){
		alert("product controller");
	});
	app.controller('locateController',function($scope){
		alert("location controller");
	});
	app.controller('contactController',function($scope){
		alert("contact controller");
	});