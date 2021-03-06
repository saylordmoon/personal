angular.module("main").controller('MenuController', function(APP,Utils){
	Utils.Auth.check();
	
	this.items = [  
		{nombre:"Datos Personales",			icono:"fa fa-user", 				url:"#/" },
		{nombre:"Formacion Académica", 		icono:"fa fa-graduation-cap", 		url:"#/formacion" },
		{nombre:"Capacitación", 			icono:"fa fa-leanpub", 				url:"#/capacitacion" },
		{nombre:"Idiomas", 					icono:"fa fa-language", 			url:"#/idioma" },
		{nombre:"Experiencia Profesional", 	icono:"fa fa-folder", 				url:"#/experiencia" },
		{nombre:"Salir", 					icono:"fa fa-sign-out", 			url:APP.URL + "logout" },
	];

 	$("#menu-toggle").click(function(e) {  e.preventDefault();$("#wrapper").toggleClass("toggled"); });
 
});