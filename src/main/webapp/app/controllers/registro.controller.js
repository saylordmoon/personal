angular.module("main").controller("RegistroController",function(Utils,APP,$location){

	var self = this;
	
	this.persona={};
	this.formacionacademica={};
	this.formacionesacademicas = [];
	
	this.capacitacion={};
	this.capacitaciones=[];
	
	this.idioma={};
	this.idiomas=[];
	
	this.experiencialaboral={};
	this.experienciaslaborales=[];
	
	
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
			
			this.formacionacademica.gradoacademico = Utils.UI.Select.getSelectedText("sel-fa-grado-academico");
			this.formacionacademica.pais = Utils.UI.Select.getSelectedText("sel-fa-pais");
			if (this.nueva) this.formacionacademica.push(this.formacionacademica);
			console.log("Formaciones académicas" , this.formacionesacademicas);
			this.formacionacademica = {};
			$(".modal-formacion-academica").modal("hide");			
		}
	}
	
	
	this.guardarCapacitacion = function() {
		
		console.log("Guardar");		
		Utils.Validation.init();
		Utils.Validation.required("#txt-c-curso-capacitacion","Curso de Capacitación");
		Utils.Validation.required("#dat-c-fecha-inicio","Fecha de Inicio");
		Utils.Validation.required("#dat-c-fecha-fin","Fecha de Fin");
		
		Utils.Validation.dateLessThan("#dat-c-fecha-inicio",this.capacitacion.fechaFin,"Fecha de Inicio");
		Utils.Validation.dateGreaterThan("#dat-c-fecha-fin",this.capacitacion.fechaInicio,"Fecha de Fin");
				
		Utils.Validation.required("#txt-c-horas-lectivas","Horas Lectivas");
		Utils.Validation.required("#txt-c-institucion","Institución");
		Utils.Validation.required("#sel-c-pais","País");
		Utils.Validation.required("#txt-c-documento-sustentatorio","Documento sustentatorio");
		
		if (Utils.Validation.run()){
			
			if (this.nueva) this.capacitacion.push(this.capacitacion);
			console.log("Capacitaciones" , this.capacitaciones);
			this.capacitacion = {};
			$(".modal-capacitacion").modal("hide");			
		}
	}
	
	
	this.guardarIdioma = function() {
		
		console.log("Guardar");		
		Utils.Validation.init();
		Utils.Validation.required("#sel-i-idioma","Idioma");
		Utils.Validation.required("#sel-i-nivel-escritura","Nivel de Escritura");
		Utils.Validation.required("#sel-i-nivel-hablado","Nivel de Hablado");		
		Utils.Validation.required("#sel-i-nivel-lectura","Nivel de Lectura");
		Utils.Validation.required("#txt-i-documento-sustentatorio","Documento sustentatorio");
		
		if (Utils.Validation.run()){
			
			this.idioma.idioma = Utils.UI.Select.getSelectedText("sel-i-idioma");
			this.idioma.nivelescritura = Utils.UI.Select.getSelectedText("sel-i-nivel-escritura");
			this.idioma.nivelhablado = Utils.UI.Select.getSelectedText("sel-i-nivel-hablado");
			this.idioma.nivellectura = Utils.UI.Select.getSelectedText("sel-i-nivel-lectura");
			
			if (this.nueva) this.idioma.push(this.idioma);
			console.log("Idiomas", this.idiomas);
			this.idioma = {};
			$(".modal-idiomas").modal("hide");			
		}
	}
	
	
	this.guardarExperienciaLaboral = function() {
		
		console.log("Guardar");		
		Utils.Validation.init();
		Utils.Validation.required("#txt-el-empresa","Empresa");		
		Utils.Validation.required("#sel-el-cargo","Cargo");		
		Utils.Validation.required("#dat-el-fecha-inicio","Fecha de Inicio");		
		Utils.Validation.required("#dat-el-fecha-fin","Fecha de Fin");
		
		Utils.Validation.dateLessThan("#dat-el-fecha-inicio",this.experiencialaboral.fechaFin,"Fecha de Inicio");
		Utils.Validation.dateGreaterThan("#dat-el-fecha-fin",this.experiencialaboral.fechaInicio,"Fecha de Fin");
		
		Utils.Validation.required("#txt-el-descripcion","Descripción");		
		Utils.Validation.required("#txt-el-descripcion","Descripción");
		Utils.Validation.required("#sel-el-area","Área");
		Utils.Validation.required("#sel-el-rubro","Rubro");
		Utils.Validation.required("#sel-el-sector","Sector");
		Utils.Validation.required("#sel-el-pais","País");
		Utils.Validation.required("#txt-el-documento-sustentatorio","Documento Sustentatorio");
		
		if (Utils.Validation.run()){
			
			this.experiencialaboral.cargo = Utils.UI.Select.getSelectedText("sel-el-cargo");
			this.experiencialaboral.area = Utils.UI.Select.getSelectedText("sel-el-area");
			this.experiencialaboral.rubro = Utils.UI.Select.getSelectedText("sel-el-rubro");
			this.experiencialaboral.sector = Utils.UI.Select.getSelectedText("sel-el-sector");
			this.experiencialaboral.pais = Utils.UI.Select.getSelectedText("sel-el-pais");
			
			if (this.nueva) this.experiencialaboral.push(this.experiencialaboral);
			console.log("Experiencia Laborales", this.experienciaslaborales);
			this.experiencialaboral = {};
			$(".modal-experiencia-laboral").modal("hide");			
		}
	}

	
	this.registrarse = function() {
		
		console.log("Guardar");		
		Utils.Validation.init();
		Utils.Validation.required("#txt-dp-nombres","Nombres");		
		Utils.Validation.required("#txt-dp-apellidos","Apellidos");
		
		Utils.Validation.required("#txt-dp-fecha-nacimiento","Fecha de Nacimiento");		
		Utils.Validation.required("#sel-dp-sexo","Sexo");	
		Utils.Validation.required("#sel-dp-tipo-documento","Tipo de Documento");		
		Utils.Validation.required("#txt-dp-numero-documento","Número de Documento");	
		Utils.Validation.required("#txt-dp-documento","Documento");		
		Utils.Validation.required("#txt-dp-ruc","R.U.C.");	
		Utils.Validation.required("#txt-dp-telefono","Teléfono");		
		Utils.Validation.required("#txt-dp-correo","Correo Electrónico");	
		Utils.Validation.required("#sel-dp-pais-nacimiento","País de Nacimiento");		
		Utils.Validation.required("#txt-dp-direccion","Dirección de Residencia");	
		
		Utils.Validation.required("#sel-dp-departamento","Departamento");	
		Utils.Validation.required("#sel-dp-provincia","Provincia");		
		Utils.Validation.required("#sel-dp-distrito","Distrito");	
		Utils.Validation.required("#txt-dp-curriculum","Curriculum");		
		Utils.Validation.required("#txt-dp-foto","Foto");	
		
				
		Utils.Validation.minLen("#panel-formacion-academica", this.persona, 1, "Formación Académica" , "panel-danger");
		Utils.Validation.minLen("#panel-capacitacion", this.persona, 1, "Capacitación" , "panel-danger");
		Utils.Validation.minLen("#panel-idiomas", this.persona, 1, "Idioma" , "panel-danger");
		Utils.Validation.minLen("#panel-experiencia-laboral", this.persona, 1, "Experiencia Laboral" , "panel-danger");		
		Utils.Validation.minLen("#panel-computacion", this.persona, 1, "Computación" , "panel-danger");
		Utils.Validation.minLen("#panel-informacion-adicional", this.persona, 1, "Información Adicional" , "panel-danger");
		
		if (Utils.Validation.run()){
			
				
		}
	}
	
});