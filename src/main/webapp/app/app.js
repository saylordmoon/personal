var app = angular.module('main',['ngRoute'])

.constant("APP", 
		{
		    "URL"		: "/supervisores/",
		    "URL_API"	: "/supervisores/api/v1/",
		    "URL_LOGIN"	: "/supervisores/login"
		}
)
.constant("DATE", 
		{
		    "FORMAT"		: "dd/MM/yyyy",
		    "FORMAT_MOMENT"	: "DD/MM/YYYY",    
		}
)
