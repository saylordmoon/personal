angular.module("main").service("MaskService",function(){

	this.init = function(){
		
		$(".fecha").inputmask("99/99/9999",{placeholder: "dd/mm/aaaa"});
		
		$(".moneda").inputmask("decimal", { digits: 2, autoGroup: true, groupSize: 3, groupSeparator: ",",autoUnmask:true  });
		$(".numero").inputmask("integer",{autoUnmask:true, rightAlign: false });
		$(".ruc").inputmask("99999999999",{autoUnmask:true});
		$(".dni").inputmask("99999999",{autoUnmask:true});
		$(".cci").inputmask("99999999999999999999",{autoUnmask:true});
		$(".cuenta").inputmask("integer",{autoUnmask:true,rightAlign: false});

		$(".fecha").ionDatePicker({
		    lang: "es",                     // language
		    sundayFirst: false,             // first week day
		    years: "90",                    // years diapason
		    format: "DD/MM/YYYY",           // date format
		    onClick: function(date){        // click on day returns date
		        //console.log(date);
		    }
		});
	}	
});