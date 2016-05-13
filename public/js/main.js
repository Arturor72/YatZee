$(document).ready(function(){
	var cont=$("#lanzamiento").val();
	var result=$("#result").val();

	if(cont==3){
		$("#relanzar").prop('disabled', true);
	}
	
	if (result == "Ganaste" ) { // || result == "Game Over"
		$("#relanzar").hide();
	}

	if (cont==0){
		$("#relanzar").hide();
	} else {
		$("#btn_lanzar").hide();
	}

});
	
