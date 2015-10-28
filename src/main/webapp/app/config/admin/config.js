angular.module("main").config(['$routeProvider',function($routeProvider){

	$routeProvider.

		when('/', 	{ templateUrl: 'views/admin/plan.jsp' 	}).
		

		otherwise({	redirectTo: '/'	});

}]);