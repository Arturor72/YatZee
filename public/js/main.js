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
	if (cont!=0){
		load_images();
	}

});

function load_images(){
		dado1=$("#dado1").val();
		dado2=$("#dado2").val();
		dado3=$("#dado3").val();
		dado4=$("#dado4").val();
		dado5=$("#dado5").val();
		$("#dado1_img").html("<img src=\"img/dado"+dado1+".png\"/>");
		$("#dado2_img").html("<img src=\"img/dado"+dado2+".png\"/>");
		$("#dado3_img").html("<img src=\"img/dado"+dado3+".png\"/>");
		$("#dado4_img").html("<img src=\"img/dado"+dado4+".png\"/>");
		$("#dado5_img").html("<img src=\"img/dado"+dado5+".png\"/>");
}
	
