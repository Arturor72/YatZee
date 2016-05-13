Feature: Lanzamiento de dado

Scenario: Inicio portada

	Given Voy a la pagina
	Then visualizo el "YatZee"

Scenario: Lanzar dado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo numero "3"
#	And visualizo numero "5"
#	And visualizo el total de puntos "8"

Scenario: Relanzar dado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	And selecciono "d3_selected"
	And hago click en el boton "relanzar"
	#Then visualizo numero "6"


Scenario: Veo mi puntaje
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo en la tabla la fila "Puntaje"
	
Scenario: Veo Resultado
	Given Voy a jugar
	When hago click en el boton "lanzar"
	Then visualizo "Resultado"

Scenario: Reiniciar Juego
	Given Voy a jugar
	And hago click en el boton "lanzar"
	When hago click en el boton "Volver a Jugar"
	Then  visualizo "Aun no tienes puntos"

Scenario: Perder Juego
	Given Voy a jugar
	When hago click en el boton "lanzar"
	And selecciono "d1_selected"
	And selecciono "d2_selected"
	And selecciono "d3_selected"
	And selecciono "d4_selected" 
	And selecciono "d5_selected"
	And hago click en el boton "relanzar"
	And selecciono "d1_selected"
	And selecciono "d2_selected"
	And selecciono "d3_selected"
	And selecciono "d4_selected" 
	And selecciono "d5_selected"
	And hago click en el boton "relanzar"
	And visualizo "Lanzamientos:3"
	# And visualizo "Puntaje :</td><td>5</td>"
	#Then visualizo "Game over"

	
Scenario: Ocultar boton lanzar, luego  de lanzar la primera vez los dados
	Given Voy a jugar
	And visualizo "lanzar"
	When hago click en el boton "lanzar"
	Then visualizo "relanzar"
	
