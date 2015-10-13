angular.module("main").controller("RegistroController",function(){

	var self = this;
	
	this.persona={};
	this.FormacionAcademica={};
	
	
	
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
	
	
	
this.guardarFormacionAcademica = function() {
		
		console.log("Guardar");		
		Utils.Validation.init();
		Utils.Validation.required("#sel-fa-grado-academico","Grado Académico");
		Utils.Validation.required("#txt-fa-profesion","Profesión");
		Utils.Validation.required("#txt-fa-fecha-expedicion","Fecha de Expedición");
		Utils.Validation.required("#txt-fa-institucion","Institución");
		Utils.Validation.required("#sel-fa-pais","País");
		
		if (Utils.Validation.run()){
			
		}
	}
	

});