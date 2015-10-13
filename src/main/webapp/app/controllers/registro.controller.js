angular.module("main").controller("RegistroController",function(){

	this.agregarFormacionAcademica = function(){

		$(".modal-formacion-academica").modal("show");
		console.log("Formacion Academica");
	}
	
	this.agregarCapacitacion = function(){
		
		$(".modal-capacitacion").modal("show");
		console.log("Capacitacion");
	}
	
	this.agregarIdiomas = function(){


		$(".modal-idiomas").modal("show");
		console.log("Idiomas");
	}
	
	this.agregarExperienciaLaboral = function(){
		
		$(".modal-experiencia-laboral").modal("show");
		console.log("Experiencia Laboral");
	}
	

});