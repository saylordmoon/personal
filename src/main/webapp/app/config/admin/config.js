angular.module("main").config(['$routeProvider',function($routeProvider){

	$routeProvider.

		when('/', 	{ templateUrl: 'views/admin/supervision.jsp' 	}).
		

		otherwise({	redirectTo: '/'	});

}]);