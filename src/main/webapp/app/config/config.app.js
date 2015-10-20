angular.module("main").config(['$routeProvider',function($routeProvider){

	$routeProvider.

		when('/', 			{ templateUrl: 'views/profile.jsp' 	}).

		otherwise({	redirectTo: '/'	});

}]);