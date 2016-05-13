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
	


