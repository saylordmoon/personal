angular.module("main").controller('MenuController', function(Utils,APP){
	
	Utils.Rest.getList(this,APP.URL_API + "usuario/admin").error(function(){window.location = APP.URL_LOGIN;});
	
	this.items = [  
	              
		{ nombre:"Plan", 	icono:"fa fa-edit", 		url:"#/" },
		{ nombre:"EDITAR", 	icono:"fa fa-comment", 		url:"#/EDITAR" },
		
	];

 	$("#menu-toggle").click(function(e) {  e.preventDefault();$("#wrapper").toggleClass("toggled"); });
 
});
