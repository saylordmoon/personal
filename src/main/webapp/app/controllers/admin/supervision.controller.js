angular.module("main").controller("SupervisionController", function(Utils,APP){

	var self = this;
	
	this.paquetes = [];
	this.paquete = {};

	refresh();
	
	this.nuevoPaquete = function(){

		Utils.Rest.save(APP.URL_API + "plan/1/paquete" , this.paquete).success(function(){
			refresh();
		});
		
		this.paquete = {};
	}

	function refresh() { 

		Utils.Rest.getList(self,APP.URL_API + "plan/1/paquete" , "paquetes");	
	}

});