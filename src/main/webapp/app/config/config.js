angular.module("main").config(['$routeProvider',function($routeProvider){

	$routeProvider.

		when('/',  			{ templateUrl: 'app/views/registro.jsp' 	}).
		when('/mensaje',  	{ templateUrl: 'app/views/mensaje.jsp' 	}).
		otherwise({	redirectTo: '/'	});

}]);