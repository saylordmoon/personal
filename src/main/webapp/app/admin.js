var app = angular.module('main',['ngRoute'])

.constant("APP", 
		{
		    "URL"		: "/appbase/",
		    "URL_API"	: "/appbase/api/v1/",
		    "URL_LOGIN"	: "../admin/index.html",    
		}
)

.constant("DATE", 
		{
		    "FORMAT"		: "dd/MM/yyyy",
		    "FORMAT_MOMENT"	: "DD/MM/YYYY",    
		}
)