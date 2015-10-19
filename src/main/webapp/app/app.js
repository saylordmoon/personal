var app = angular.module('main',['ngRoute'])

.constant("APP", 
		{
		    "URL"		: "/appbase/",
		    "URL_API"	: "/appbase/api/v1/",    
		}
)




/*.constant("APP", 
		{
		    "URL"		: "/supervisores/",
		    "URL_API"	: "/supervisores/api/v1/",    
		}
)*/

.constant("DATE", 
		{
		    "FORMAT"		: "dd/MM/yyyy",
		    "FORMAT_MOMENT"	: "DD/MM/YYYY",    
		}
)
